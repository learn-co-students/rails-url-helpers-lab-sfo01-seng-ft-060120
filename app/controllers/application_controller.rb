class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    def activate
      @student = Student.find(params[:id])
      if @student.active == true
        @student.active = false
      else
        @student.active = true
      end
      @student.save
      redirect_to student_path(@student)
    end

end
