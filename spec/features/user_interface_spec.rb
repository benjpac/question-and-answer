require 'rails_helper'

describe "sign up" do
  it "adds a new question and answer" do
    visit root_path
    click_link 'Sign up'
    fill_in 'user_email', :with => 'bill@cosby.com'
    fill_in 'user_password', :with => 'catcat'
    fill_in 'user_password_confirmation', :with => 'catcat'
    click_on 'Sign Up'
    expect(page).to have_content 'bill@cosby.com'
    click_link 'Ask a new question'
    fill_in 'Content', :with => "whatever"
    click_on 'Create Question'
    expect(page).to have_content 'whatever'
    click_on 'whatever'
    click_on 'Answer Question'
    fill_in 'Content', :with => "hi"
    click_on 'Create Answer'
    expect(page).to have_content 'hi'
  end
end