source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# Dot-Env
gem 'dotenv-rails', require: 'dotenv/rails-now'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# For never accidentally send emails to real people from staging environment.
gem 'recipient_interceptor', '~> 0.2.0'

# RailsConfig helps you easily manage environment specific Rails settings in an easy and usable manner
gem 'config', '~> 1.7'

# Rollbar is an error tracking service.
gem 'rollbar'

# Ransack is the successor to the MetaSearch gem.
gem 'ransack', '~> 2.1', '>= 2.1.1'

# will_paginate
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'
gem 'will-paginate-i18n', '~> 0.1.15'

# Excell export
gem 'to_xls', '~> 1.5', '>= 1.5.3'

# write_xlsx is a gem to create a new file in the Excel 2007+ XLSX format.
gem 'write_xlsx', '~> 0.85.1'

# Roo can access the contents of various spreadsheet files.
gem 'roo-xls', '~> 1.1'
gem 'roo', '~> 2.7', '>= 2.7.1'

group :development, :test do
  gem 'better_errors', '~> 2.5'
  gem 'binding_of_caller', '~> 0.8.0'
  gem 'bullet', '~> 5.9'
  gem 'colorize', '~> 0.8.1'
end

# A set of common locale data and translations to internationalize and/or localize your Rails applications.
gem 'rails-i18n', '~> 5.1'

# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.5'

# Audited is an ORM extension that logs all changes to your models
gem 'audited', '~> 4.8'

# Official AWS Ruby gem for Amazon Simple Storage Service (Amazon S3).
gem 'aws-sdk-s3', '~> 1.30'

# Simple Form aims to be as flexible as possible while helping you with powerful components to create your forms.
gem 'simple_form', '~> 4.0', '>= 4.0.1'
#Wrap your objects with a helper to easily show them
gem 'show_for', '~> 0.6.0'
# Haml is a templating engine for HTML.
gem 'haml', '~> 5.0', '>= 5.0.4'
# Haml-rails provides Haml generators for Rails.
gem 'haml-rails', '~> 1.0'
# Bootstrap ruby gem.
gem 'bootstrap', '~> 4.1', '>= 4.1.1'
gem 'popper_js', '~> 1.12', '>= 1.12.9'
# BreadcrumbsOnRails is a simple Ruby on Rails plugin for creating and managing
# a breadcrumb navigation for a Rails project.
gem 'breadcrumbs_on_rails', '~> 3.0', '>= 3.0.1'
# jquery gems
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
# Use Sidekiq as a background job processor through Active Job
gem 'sidekiq', '~> 5.1', '>= 5.1.3'
gem 'sidekiq-cron', '~> 0.6.3'
# Cocaine run bash commands with ruby. Required for sidekiq start commands
gem 'cocaine', '~> 0.5.8'
# Devise Async provides an easy way to configure Devise to send its emails asynchronously using ActiveJob.
gem 'devise-async', '~> 1.0'
# Responders gem for flash notifications
gem 'responders', '~> 2.4'

# Pronto runners
group :development do
  gem 'pronto', '~> 0.9.5'
  gem 'pronto-erb_lint', require: false
  gem 'pronto-brakeman', require: false
  gem 'pronto-fasterer', require: false
  gem 'pronto-flay', require: false
  gem 'pronto-haml', require: false
  gem 'pronto-poper', require: false
  gem 'pronto-rubocop', require: false
end
