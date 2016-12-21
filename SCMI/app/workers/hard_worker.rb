class HardWorker
  include Sidekiq::Worker
  sidekiq_options queue: :hard_worker

  def perform(*args)
    puts "HELLO WORLD !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    Rails.logger.info "Time now is #{Time.now}"
  end
end
