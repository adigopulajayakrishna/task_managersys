class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  def destroy
    @task = Task.find(params[:id])

    @task.destroy

    redirect_to tasks_path,
                notice: "Task Deleted"
  end
  end
  def index
    @tasks = Task.all
  end

  private

  def task_params
    params.require(:task).permit(
      :name,
      :description,
      :due_date,
      :category,
      :priority
    )
  end
end
