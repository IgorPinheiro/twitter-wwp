require "application_system_test_case"

class TwitteersTest < ApplicationSystemTestCase
  setup do
    @twitteer = twitteers(:one)
  end

  test "visiting the index" do
    visit twitteers_url
    assert_selector "h1", text: "Twitteers"
  end

  test "creating a Twitteer" do
    visit twitteers_url
    click_on "New Twitteer"

    fill_in "Twitteer", with: @twitteer.twitteer
    click_on "Create Twitteer"

    assert_text "Twitteer was successfully created"
    click_on "Back"
  end

  test "updating a Twitteer" do
    visit twitteers_url
    click_on "Edit", match: :first

    fill_in "Twitteer", with: @twitteer.twitteer
    click_on "Update Twitteer"

    assert_text "Twitteer was successfully updated"
    click_on "Back"
  end

  test "destroying a Twitteer" do
    visit twitteers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twitteer was successfully destroyed"
  end
end
