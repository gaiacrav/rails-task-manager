class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path(@task)
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.fin(params[:id])
    @task.update(all_task_params)

    redirect_to tasks_path(@tasks)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path(@tasks)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def all_task_params
    params.require(:task).permit(:title, :details, :completed)
  end


end
