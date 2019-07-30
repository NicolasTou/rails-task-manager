class TasksController < ApplicationController
  before_action :set_tasks, only: [:show, :edit, :update]
  def index
    @task = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(tasks_params)
    redirect_to tasks_path
  end

  private

  def set_tasks
    @task = Task.find(params[:id])
  end

  def tasks_params
    return params.require(:task).permit(:id, :details, :completed)
  end
end
