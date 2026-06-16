class SubtasksController < ApplicationController
  before_action :set_task
  def new
    @subtask = @task.subtasks.new
  end

  def create
    @subtask = @task.subtasks.new(subtask_params)

    if @subtask.save

      redirect_to task_path(@task),
                  notice: "Subtask Added"

    else

      render :new

    end
  end
end
