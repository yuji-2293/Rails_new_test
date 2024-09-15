class TaskJob < ApplicationJob
  queue_as :default

  def perform(title)
    Task.create!(title: title)
  end
end
