require "application_system_test_case"

class MissionsTest < ApplicationSystemTestCase
  setup do
    @mission = missions(:one)
  end

  test "visiting the index" do
    visit missions_url
    assert_selector "h1", text: "Missions"
  end

  test "creating a Mission" do
    visit missions_url
    click_on "New Mission"

    fill_in "Administrator", with: @mission.administrator_id
    check "Status" if @mission.status
    fill_in "Task", with: @mission.task_id
    click_on "Create Mission"

    assert_text "Mission was successfully created"
    click_on "Back"
  end

  test "updating a Mission" do
    visit missions_url
    click_on "Edit", match: :first

    fill_in "Administrator", with: @mission.administrator_id
    check "Status" if @mission.status
    fill_in "Task", with: @mission.task_id
    click_on "Update Mission"

    assert_text "Mission was successfully updated"
    click_on "Back"
  end

  test "destroying a Mission" do
    visit missions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mission was successfully destroyed"
  end
end
