class HomeController < ApplicationController
  def index

  end

  def start_task
    SimpleJob.perform_later
    head :ok
  end
end
