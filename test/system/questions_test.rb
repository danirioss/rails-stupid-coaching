require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "user_question", with: "Hello"
    click_on "Ask"
    assert_text "I don't care, get dressed and go to work"
    save_and_open_screenshot
  end

  test "asking anything also gets a grumpy response from the coach" do
    visit ask_url
    fill_in "user_question", with: "Hello?"
    click_on "Ask"
    assert_text "Silly question, get dressed and go to work!"
    save_and_open_screenshot
  end

  test "saying I am going to work gets Great as an answer" do
    visit ask_url
    fill_in "user_question", with: "I am going to work"
    click_on "Ask"
    assert_text "Great"
    save_and_open_screenshot
  end
end
