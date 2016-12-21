class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    Rails.logger.info "Time now is #{Time.now}"
  end
end
