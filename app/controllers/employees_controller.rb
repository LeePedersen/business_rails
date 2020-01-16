class EmployeesController < ApplicationController
  DB = PG.connect({:dbname => "rails_business_development"})

  def index
    @division = Division.find(params[:division_id])
    @employees = @division.employees
    render :index
  end

  def new
    @division = Division.find(params[:division_id])
    @employee = @division.employees.new
    render :new
  end

  def create
    @division = Division.find(params[:division_id])
    @employee = @division.employees.new(employee_params)
    if @employee.save
      redirect_to division_path(@division)
    else
      render :new
    end
  end

  def edit
    @division = Division.find(params[:division_id])
    @employee = Employee.find(params[:id])
    @projects = Project.all
    render :edit
  end

  def show
    @division = Division.find(params[:division_id])
    @employee = Employee.find(params[:id])
    render :show
  end

  def update
    @division = Division.find(params[:division_id])
    @employee = Employee.find(params[:id])
    @project = Project.find(params[:project_id])
    if @project
      distinct_projects = DB.exec("SELECT DISTINCT project_id FROM employees_projects WHERE employee_id = #{@employee.id};")
      distinct = true
      distinct_projects.each do |distinct_project|
        if distinct_project.first[1].to_i == @project.id.to_i
          flash[:notice] = "This employee is already on this project"
          distinct = false
        end
      end
      if distinct == true
        @employee.projects << @project
      end
      redirect_to division_employee_path(@division, @employee)
    elsif @employee.update(employee_params)
      redirect_to division_path(@division)
    else
      render :edit
    end
  end

  def destroy
    @division = Division.find(params[:division_id])
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to division_path(@division)
  end

  private
  def employee_params
    params.require(:employee).permit(:name, :project_id)
  end
end
