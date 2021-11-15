class QuestionsController < ApplicationController
  def ask; end

  def answer
    @your_message = params[:your_message]

    if @your_message.include? 'I am going to work!'
      @answer_coach = 'Great!'
    elsif @your_message.include? '?'
      @answer_coach = 'Silly question, get dressed and go to work!'
    else
      @answer_coach = 'I don\'t care, get dressed and go to work!'
    end
  end
end
