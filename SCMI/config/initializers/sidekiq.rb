Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis_db' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis_db' }
end

schedule_file = "config/schedule.yml"
if File.exists?(schedule_file) && Sidekiq.server?
  Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
end
