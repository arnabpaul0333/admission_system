class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.save
      redirect_to new_student_education_path(@student)
    else
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end
  
  private
  def student_params
    params.require(:student).permit(:name, :email, :gender, :birth_date, :father_name, :mother_name, :contact, :address, :city, :state, :pincode)
  end
end
