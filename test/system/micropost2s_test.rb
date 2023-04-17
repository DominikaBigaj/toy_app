require "application_system_test_case"

class Micropost2sTest < ApplicationSystemTestCase
  setup do
    @micropost2 = micropost2s(:one)
  end

  test "visiting the index" do
    visit micropost2s_url
    assert_selector "h1", text: "Micropost2s"
  end

  test "creating a Micropost2" do
    visit micropost2s_url
    click_on "New Micropost2"

    fill_in "Content", with: @micropost2.content
    fill_in "User", with: @micropost2.user_id
    click_on "Create Micropost2"

    assert_text "Micropost2 was successfully created"
    click_on "Back"
  end

  test "updating a Micropost2" do
    visit micropost2s_url
    click_on "Edit", match: :first

    fill_in "Content", with: @micropost2.content
    fill_in "User", with: @micropost2.user_id
    click_on "Update Micropost2"

    assert_text "Micropost2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Micropost2" do
    visit micropost2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Micropost2 was successfully destroyed"
  end
end
