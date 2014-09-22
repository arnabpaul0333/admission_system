class EducationsController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @education = @student.build_education
  end
  
  def create
    @student = Student.find(params[:student_id])
    @education = @student.create_education(education_params)
    if @education.save
      redirect_to student_education_path(@student, @education)
    else
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:student_id])
    @education = @student.education
  end

  private
  def education_params
    params.require(:education).permit(:student_id, :tenth_board, :tenth_school_name, :tenth_percentage, :twelvth_board, :twelvth_school_name, :twelvth_percentage, :entrance_rank)
  end
end
