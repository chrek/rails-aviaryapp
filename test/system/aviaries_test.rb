require "application_system_test_case"

class AviariesTest < ApplicationSystemTestCase
  setup do
    @aviary = aviaries(:one)
  end

  test "visiting the index" do
    visit aviaries_url
    assert_selector "h1", text: "Aviaries"
  end

  test "creating a Aviary" do
    visit aviaries_url
    click_on "New Aviary"

    fill_in "Description", with: @aviary.description
    fill_in "Name", with: @aviary.name
    click_on "Create Aviary"

    assert_text "Aviary was successfully created"
    click_on "Back"
  end

  test "updating a Aviary" do
    visit aviaries_url
    click_on "Edit", match: :first

    fill_in "Description", with: @aviary.description
    fill_in "Name", with: @aviary.name
    click_on "Update Aviary"

    assert_text "Aviary was successfully updated"
    click_on "Back"
  end

  test "destroying a Aviary" do
    visit aviaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aviary was successfully destroyed"
  end
end
