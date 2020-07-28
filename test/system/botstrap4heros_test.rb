require "application_system_test_case"

class Botstrap4herosTest < ApplicationSystemTestCase
  setup do
    @botstrap4hero = botstrap4heros(:one)
  end

  test "visiting the index" do
    visit botstrap4heros_url
    assert_selector "h1", text: "Botstrap4heros"
  end

  test "creating a Botstrap4hero" do
    visit botstrap4heros_url
    click_on "New Botstrap4hero"

    fill_in "Context", with: @botstrap4hero.context
    fill_in "Title", with: @botstrap4hero.title
    click_on "Create Botstrap4hero"

    assert_text "Botstrap4hero was successfully created"
    click_on "Back"
  end

  test "updating a Botstrap4hero" do
    visit botstrap4heros_url
    click_on "Edit", match: :first

    fill_in "Context", with: @botstrap4hero.context
    fill_in "Title", with: @botstrap4hero.title
    click_on "Update Botstrap4hero"

    assert_text "Botstrap4hero was successfully updated"
    click_on "Back"
  end

  test "destroying a Botstrap4hero" do
    visit botstrap4heros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Botstrap4hero was successfully destroyed"
  end
end
