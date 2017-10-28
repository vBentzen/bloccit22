require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "Question Title String", body: "Question Body Text", resolved: false) }

  describe "attributes" do
    it 'should have title, body and resolved attributes' do
      expect(question).to have_attributes(title: "Question Title String", body: "Question Body Text", resolved: false)
    end
  end
end
