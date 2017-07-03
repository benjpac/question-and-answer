FactoryGirl.define do
  factory(:user) do
    email("bob@bobbdsfsdfsd.com")
    password("test")
  end
  factory(:answer) do
    content("MyString")
    votes(1)
    question_id(1)
  end
  factory(:question) do
    content("MyString")
    votes(1)
  end
end