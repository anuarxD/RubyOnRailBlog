require "application_system_test_case"

class ElementosTest < ApplicationSystemTestCase
  setup do
    @elemento = elementos(:one)
  end

  test "visiting the index" do
    visit elementos_url
    assert_selector "h1", text: "Elementos"
  end

  test "should create elemento" do
    visit elementos_url
    click_on "New elemento"

    fill_in "Content", with: @elemento.content
    fill_in "Elemento tipo", with: @elemento.elemento_tipo
    fill_in "Position", with: @elemento.position
    fill_in "Post", with: @elemento.post_id
    click_on "Create Elemento"

    assert_text "Elemento was successfully created"
    click_on "Back"
  end

  test "should update Elemento" do
    visit elemento_url(@elemento)
    click_on "Edit this elemento", match: :first

    fill_in "Content", with: @elemento.content
    fill_in "Elemento tipo", with: @elemento.elemento_tipo
    fill_in "Position", with: @elemento.position
    fill_in "Post", with: @elemento.post_id
    click_on "Update Elemento"

    assert_text "Elemento was successfully updated"
    click_on "Back"
  end

  test "should destroy Elemento" do
    visit elemento_url(@elemento)
    click_on "Destroy this elemento", match: :first

    assert_text "Elemento was successfully destroyed"
  end
end
