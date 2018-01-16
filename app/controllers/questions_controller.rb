class QuestionsController < ApplicationController

def index
  @questions = Question.all.order(created_at: :desc)
end

def show
  @question = Question.find(params[:id])
  @answers = @question.answers

  @answer = Answer.new
end

def new
  @question = Question.new

end


def create
  @question = Question.new(question_params)
  if @question.save
  redirect_to @question
  else
  render action: 'new'
  end

end


def edit
  @question = Question.find(params[:id])
end

def update
  @question = Question.find(params[:id])
  if @question.update(question_params)
    redirect_to @question
  else
    render :edit
  end

end





def question_params
  params.require(:question).permit(:user_name, :title, :description)
end



end
