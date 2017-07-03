FactoryGirl.define do
  factory :answer do
    content "MyString"
    votes 1
    question_id 1
  end
  factory :question do
    content "MyString"
    votes 1
  end
  factory(:user) do
    email('bob@bob.com')
  end
end