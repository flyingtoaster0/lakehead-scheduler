class API::DepartmentsController < ApplicationController
  def index
    @departments = Department.all
    respond_to do |format|
      format.json { render :json => @departments }
    end
  end

  def show
    @department = Department.where('dept_code = ?', params[:id])
    respond_to do |format|
      format.json { render :json => @department }
    end
  end
end