require "application_system_test_case"

class AdministratorsTest < ApplicationSystemTestCase
  setup do
    @administrator = administrators(:one)
  end

  test "visiting the index" do
    visit administrators_url
    assert_selector "h1", text: "Administrators"
  end

  test "creating a Administrator" do
    visit administrators_url
    click_on "New Administrator"

    fill_in "Email", with: @administrator.email
    fill_in "Matricula", with: @administrator.matricula
    fill_in "Nome", with: @administrator.nome
    fill_in "Telefone", with: @administrator.telefone
    click_on "Create Administrator"

    assert_text "Administrator was successfully created"
    click_on "Back"
  end

  test "updating a Administrator" do
    visit administrators_url
    click_on "Edit", match: :first

    fill_in "Email", with: @administrator.email
    fill_in "Matricula", with: @administrator.matricula
    fill_in "Nome", with: @administrator.nome
    fill_in "Telefone", with: @administrator.telefone
    click_on "Update Administrator"

    assert_text "Administrator was successfully updated"
    click_on "Back"
  end

  test "destroying a Administrator" do
    visit administrators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Administrator was successfully destroyed"
  end
end
