class AnswersController < ApplicationController
  def index
    @answers = Answer.all 
    render :index
  end

  def new
    @current_user = current_user
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
    render :new
  end

  def create 
    @current_user = current_user
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    @answer.user_id = @current_user.id
    if @answer.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def show
    @answer = Answer.find(params[:id])
    render :show
  end

  private

  def answer_params
    params.require(:answer).permit(:content, :votes, :user_id, :question_id)
  end
end
