require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "label", text: "Ask your coach anything"
    fill_in 'question', with: "Hello"
    click_on 'Ask'

    assert_text 'I don\'t care, get dressed and go to work!'
  end

  test "Visiting /ask renders gives the right answer" do
    visit ask_url
    assert_selector "label", text: "Ask your coach anything"
    fill_in 'question', with: "I am going to work"
    click_on 'Ask'

    take_screenshot

    assert_text 'Great!'
  end
end
