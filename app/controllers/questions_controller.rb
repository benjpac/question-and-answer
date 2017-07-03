class QuestionsController < ApplicationController
  # def index
  #   @questions = Question.all 
  #   render 
  # end

  def new
    @current_user = current_user
    @question = @current_user.questions.new
    render :new
  end

  def create 
    @current_user = current_user
    @question = @current_user.questions.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    render :show
  end

  private

  def question_params
    params.require(:question).permit(:content, :votes, :user_id)
  end

end
