class ProjectsController < ApplicationController
DB = PG.connect({:dbname => "rails_business_development"})

  def index
    @projects = Project.all
    render :index
  end

  def new
    @project = Project.new
    render :new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
    @employees = Employee.all
    render :edit
  end

  def show
    @project = Project.find(params[:id])
    @employees = Employee.all
    render :show
  end

  def update
    @project= Project.find(params[:id])
    @employee = Employee.find(params[:employee_id])
    if @employee
      distinct_employees = DB.exec("SELECT DISTINCT employee_id FROM employees_projects WHERE project_id = #{@project.id};")
      distinct = true
      distinct_employees.each do |distinct_employee|
        if distinct_employee.first[1].to_i == @employee.id.to_i
          distinct = false
        end
      end
      if distinct == true
        @project.employees << @employee
      end
      redirect_to project_path(@project)
    elsif @project.update(project_params)
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end
end
