class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question] #prend la valeur de ce qui a ete ecrit dans le form
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    return @answer
  end
end
