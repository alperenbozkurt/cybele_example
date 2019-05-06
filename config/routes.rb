require 'sidekiq/web'
require 'sidekiq/cron/web'

Rails.application.routes.draw do
  concern :activeable do
    post :toggle_is_active, on: :member
  end

  devise_path_names = {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification'
  }

  # Admins
  devise_for :admins,
             controllers: {
                 sessions: 'hq/sessions',
                 registrations: 'hq/registrations',
                 passwords: 'hq/passwords'
             },
             path: 'hq',
             path_names: devise_path_names

  as :admin do
    get 'hq/edit' => 'hq/registrations#edit', as: 'edit_admin_registration'
    put 'hq' => 'hq/registrations#update', as: 'admin_registration'
  end

  namespace :hq do
    root to: 'dashboard#index'
    resources :dashboard, only: %i[index]
    resources :admins, concerns: %i[activeable]
    resources :users, concerns: %i[activeable]
    resources :audits, only: %i[index show]
  end

  # Users
  devise_for :users,
             controllers: {
                 sessions: 'user/sessions',
                 registrations: 'user/registrations',
                 passwords: 'user/passwords'
             },
             path: 'user',
             path_names: devise_path_names

  as :user do
    get 'user/edit' => 'user/registrations#edit', as: 'edit_user_profile_registration'
    put 'user' => 'user/registrations#update', as: 'user_profile_registration'
  end

  namespace :user do
    root to: 'dashboard#index'
    resources :dashboard, only: %i[index]
    resources :profile, only: %i[show edit update]
  end

  # Common pages
  root to: 'welcome#index'

  resources :welcome, path: '', only: %i[index] do
    get :about, on: :collection
    get :contact, on: :collection
  end

  # devise_for :admins
  # devise_for :users
  # ========== Sidekiq ==========
  if Rails.env.production?
    Sidekiq::Web.use Rack::Auth::Basic do |username, password|
      username == 'sidekiq' && password == 'sidekiq'
    end
  end
  mount Sidekiq::Web, at: '/sidekiq'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match '*unmatched_route', to: 'application#page_not_found', via: :all unless Rails.env.development?
end
