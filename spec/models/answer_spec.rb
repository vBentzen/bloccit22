require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "Question Title String", body: "Question Body Text", resolved: false) }
  let(:answer) { Answer.create!(body: "Answer Body Text", question: question) }

  describe "attributes" do
    it 'should have a body attribute' do
      expect(answer).to have_attributes(body: "Answer Body Text")
    end
  end
end
