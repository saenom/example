class SimpleJob < ActiveJob::Base

  def perform
    sleep(5)
  end
end
