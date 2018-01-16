class AnswersController < ApplicationController

  def new
    @question = Question.new
    @answer = Answer.new
  end

  def create
    @question = Question.find_by(id: params[:question_id])
    @answers = @question.answers


    @answer = Answer.new(answer_params)
    @question = Question.find_by(id: params[:question_id])
    @answer.question = @question



    if @answer.save
      redirect_to question_path(@question)
    else
      render 'questions/show'
    end

  end


  def show
    @answer = Answer.find_by(id: params[:id])
    @question = @answer.question
  end

  def index
    @answers = Answer.all
  end


  def answer_params
    params.require(:answer).permit(:user_name, :description)
  end


end
