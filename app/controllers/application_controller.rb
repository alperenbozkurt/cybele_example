require 'application_responder'

class ApplicationController < ActionController::Base
  include BasicAuthentication

  before_action :configure_devise_permitted_parameters, if: :devise_controller?


  if Rails.env.production? || Rails.env.staging?
    rescue_from Exception, with: :server_error
    rescue_from ActiveRecord::RecordNotFound, with: :page_not_found
    rescue_from ActionController::RoutingError, with: :page_not_found
  end

  # self.responder = ApplicationResponder
  respond_to :html, :js, :json
  protect_from_forgery with: :exception, prepend: true

  def configure_devise_permitted_parameters
    sign_up_attributes = %i[email password password_confirmation name surname time_zone]
    sign_in_attributes = %i[email password password_confirmation current_password]
    if resource_class == User
      devise_parameter_sanitizer.permit(:sign_up, keys: sign_up_attributes)
      devise_parameter_sanitizer.permit(:sign_in, keys: sign_in_attributes)
    elsif resource_class == Admin
      devise_parameter_sanitizer.permit(:sign_up, keys: sign_up_attributes)
      devise_parameter_sanitizer.permit(:sign_in, keys: sign_in_attributes)
    end
  end


end
