class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student.active ? @status_statement = "This student is currently active." : @status_statement = "This student is currently inactive."
  end

  def activate_student
    @student = Student.find(params[:id])
    @student.active ? @student.active = false : @student.active = true
    @student.save
    redirect_to "/students/#{@student.id}"
    # params[:activate] = @student.active == !@student.active
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end