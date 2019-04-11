class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
    # @dog = @employee.dog
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    # byebug
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :dog_id)
  end


















end
