module VotoMobile
  module Questions
    def questions(survey_id = nil)
      list = QuestionsList.new self, 'questions'
      data = get("surveys/#{survey_id}/questions")
      try_paginate(data, list)
      list.data = data['data']['questions']
      list
    end
  end
  
  class QuestionsList < BaseList; end
end
