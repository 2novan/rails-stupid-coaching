class QuestionsController < ApplicationController
  def ask
    @ask = params[:answer].to_s
  end

  def answer
    @ask = params[:answer].to_s
    if @ask.downcase.include? "i am going to work right now!"
      @full_answer = "Great!"
    elsif @ask.downcase.include? "?"
      @full_answer = "Silly question, get dressed and go to work!"
    else @full_answer = "I don't care, get dressed and go to work!"
    end
  end
end
