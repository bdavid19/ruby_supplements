require "application_system_test_case"

class FoodsupplementsTest < ApplicationSystemTestCase
  setup do
    @foodsupplement = foodsupplements(:one)
  end

  test "visiting the index" do
    visit foodsupplements_url
    assert_selector "h1", text: "Foodsupplements"
  end

  test "creating a Foodsupplement" do
    visit foodsupplements_url
    click_on "New Foodsupplement"

    fill_in "Articlenum", with: @foodsupplement.articlenum
    fill_in "Category", with: @foodsupplement.category
    fill_in "Name", with: @foodsupplement.name
    fill_in "Price", with: @foodsupplement.price
    fill_in "Rating", with: @foodsupplement.rating
    click_on "Create Foodsupplement"

    assert_text "Foodsupplement was successfully created"
    click_on "Back"
  end

  test "updating a Foodsupplement" do
    visit foodsupplements_url
    click_on "Edit", match: :first

    fill_in "Articlenum", with: @foodsupplement.articlenum
    fill_in "Category", with: @foodsupplement.category
    fill_in "Name", with: @foodsupplement.name
    fill_in "Price", with: @foodsupplement.price
    fill_in "Rating", with: @foodsupplement.rating
    click_on "Update Foodsupplement"

    assert_text "Foodsupplement was successfully updated"
    click_on "Back"
  end

  test "destroying a Foodsupplement" do
    visit foodsupplements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foodsupplement was successfully destroyed"
  end
end
