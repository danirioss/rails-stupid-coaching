class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:user_question] == "I am going to work"
      @answer = "Great!"
    elsif params[:user_question].end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
