require 'rails_helper'

RSpec.describe Answer, type: :model do
  it 'adds a question and answer' do
    user = FactoryGirl.create(:user)
    question = FactoryGirl.create(:question, :user_id => user.id)
    question.content.should eq "MyString"
    answer = FactoryGirl.create(:answer, :user_id => user.id, :question_id => question.id)
    answer.content.should eq "MyString"
  end
end
