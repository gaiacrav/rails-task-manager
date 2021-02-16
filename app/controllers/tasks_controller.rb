class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @tasks = Task.new
  end

  def show
    @tasks = Task.find(params[:id])
  end

end
