class AnswersController < ApplicationController

  # def index
  #   @question = Question.find(params[:question_id])
  #   @answers = @question.answers
  # end
  def new
    @question = Question.new
    @answer = Answer.new
  end

# code is breaking here
  def create
    #new code
    @question = Question.find_by(id: params[:question_id])
    @answers = @question.answers


    @answer = Answer.new(answer_params)
    @question = Question.find_by(id: params[:question_id])
    @answer.question = @question



    if @answer.save
      redirect_to question_path(@question)
    else
      # redirect_to question_path(@question)
      render 'questions/show'
    end

  end


  def show
    # @question = Question.find(params[:question_id])
    # @answers = @question.answers

    @answer = Answer.find_by(id: params[:id])
    @question = @answer.question
  end


# new
  def index
    @answers = Answer.all
  end





  def answer_params
    params.require(:answer).permit(:user_name, :description)
  end


end
