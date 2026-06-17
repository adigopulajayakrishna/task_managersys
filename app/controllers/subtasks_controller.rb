class SubtasksController < ApplicationController
  def new
    @task = Task.find(params[:task_id])
    @subtask = @task.subtasks.new
  end

  def create
     @task = Task.find(params[:task_id])
    @subtask = @task.subtasks.new(subtask_params)

    if @subtask.save
      redirect_to task_subtasks_path(@task)
    else
      render :new
    end
  end
  def index
    @task = Task.find(params[:task_id])
    @subtask = @task.subtasks
  end


  private

  def subtask_params
    params.require(:subtask).permit(
      :name,
      :description,
      :due_date,
      :priority
    )
  end
end
