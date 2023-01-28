class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question].ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don not care, get dressed and go to work!'
    end
  end
end
