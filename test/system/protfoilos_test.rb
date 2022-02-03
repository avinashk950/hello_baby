require "application_system_test_case"

class ProtfoilosTest < ApplicationSystemTestCase
  setup do
    @protfoilo = protfoilos(:one)
  end

  test "visiting the index" do
    visit protfoilos_url
    assert_selector "h1", text: "Protfoilos"
  end

  test "should create protfoilo" do
    visit protfoilos_url
    click_on "New protfoilo"

    fill_in "Social media", with: @protfoilo.social_media
    fill_in "User", with: @protfoilo.user_id
    click_on "Create Protfoilo"

    assert_text "Protfoilo was successfully created"
    click_on "Back"
  end

  test "should update Protfoilo" do
    visit protfoilo_url(@protfoilo)
    click_on "Edit this protfoilo", match: :first

    fill_in "Social media", with: @protfoilo.social_media
    fill_in "User", with: @protfoilo.user_id
    click_on "Update Protfoilo"

    assert_text "Protfoilo was successfully updated"
    click_on "Back"
  end

  test "should destroy Protfoilo" do
    visit protfoilo_url(@protfoilo)
    click_on "Destroy this protfoilo", match: :first

    assert_text "Protfoilo was successfully destroyed"
  end
end
