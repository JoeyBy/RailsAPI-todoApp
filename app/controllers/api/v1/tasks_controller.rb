class Api::V1::TasksController < ApplicationController

    def index
        @tasks = Task.all.order(:id).reverse
        respond_with @tasks
    end

    def show
        @task = Task.find(params[:id])
        respond_with @task
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            render json: @task, status: 201
        else
            render json: {errors: @task.errors.full_messages}, status: 422
        end
    end 

    private
        def task_params
            params.require(:task).permit(:description, :due_date)
        end

end