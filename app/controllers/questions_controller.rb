class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    # @answer = nil
    @answer = @question.last

    case @question
    when "I am going to work"
      @answer = "Great!"
    when /^[a-z|A-Z|0-9]+[^I]\s?\?{1}$/
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
