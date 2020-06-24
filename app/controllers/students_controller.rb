class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    # byebug
  end
# its asking us the show a specific student we are asking to find

  def activate 
    @student = Student.find(params[:id])
   if @student.active == true 
    @student.update(active: "false")
   else
    @student.active == false 
    @student.update(active: "true")
   end
   redirect_to student_path(@student.id)
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end