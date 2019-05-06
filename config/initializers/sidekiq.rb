require 'sidekiq'
require 'sidekiq/web'

labels = "hello_world_#{Rails.env}"
settings = {
  url: ENV['REDIS_URL'] || 'redis://localhost:6379/0'
}

Sidekiq.configure_server { |config| config.redis = settings }
Sidekiq.configure_client { |config| config.redis = settings }
Sidekiq.options[:labels] << labels

# Open this if you have scheduled jobs
# schedule_file = 'config/sidekiq_schedule.yml'
# if File.exists?(schedule_file) && Sidekiq.server?
#   Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
# end