class ExamsController < ApplicationController

  def index
    @exam = current_user.exams.new
    @subjects = Subject.all
    @exams = current_user.exams.includes(:subject, :exam_questions).newest
      .paginate page: params[:page], per_page: Settings.pagination.per_page
  end

  def create
    @exam = current_user.exams.new exam_params
    if @exam.save
      respond_to do |format|
        format.js
      end
    else
      flash[:danger] = t "flash.danger.created_exam"
      redirect_to exams_path
    end
  end

  private
  def exam_params
    params.require(:exam).permit :subject_id
  end
end
