class QuestionsController < ApplicationController
  def ask
    puts "do_something"
  end

  def answer
    question = params[:question]
    @answer = ''

    if question.eql?('I am going to work')
      @answer = 'Great!'
    elsif question[-1].eql?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work?'
    end
  end
end
