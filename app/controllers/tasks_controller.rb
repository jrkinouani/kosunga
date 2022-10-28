class TasksController < ApplicationController
	before_action :set_task, only: %i[edit show destroy update]

	def new
		@task =  Task.new
	end

	def create
		@task = Task.new(params_task)
    @task.user = current_user

    if @task.save!
      redirect_to task_path(@task)
    else
      render :new, status: :unprocessable_entity
    end
	end

	def show
	end

	def index
		@tasks = Task.all
	end

	def edit
	end

	def destroy
		@task.update(params_task)
    redirect_to tasks_path, status: :see_other
	end

	def update
		@task.update(params_task)
    redirect_to task_path(@task)
	end

	private

	def set_task
		@task = Task.find(params[:id])
	end

	def params_task
		params.require(:task).permit(:title, :duration, :completed, :support_one, :support_two)
	end

end
