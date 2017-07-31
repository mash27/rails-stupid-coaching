class CoachingController < ApplicationController
  def answer
   @answer = coach_answer_enhanced(params[:query])
  end

  def coach_answer(query)
    if query.include? "?"
      "Silly question, get dressed and go to work!"
    elsif query == "I am going to work right now!"
      ""
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(query)
    prefix = "I can feel your motivation!"
    if query == "I am going to work right now!".upcase
      "Y"
    elsif query == query.upcase
      prefix + " " + coach_answer(query)
    else
      coach_answer(query)
    end
  end

  def ask
  end
end

