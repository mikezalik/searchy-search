require "application_system_test_case"

class SearchItemsTest < ApplicationSystemTestCase
  setup do
    @search_item = search_items(:one)
  end

  test "visiting the index" do
    visit search_items_url
    assert_selector "h1", text: "Search Items"
  end

  test "creating a Search item" do
    visit search_items_url
    click_on "New Search Item"

    fill_in "Keywords", with: @search_item.keywords
    fill_in "Link", with: @search_item.link
    fill_in "Text", with: @search_item.text
    fill_in "Title", with: @search_item.title
    click_on "Create Search item"

    assert_text "Search item was successfully created"
    click_on "Back"
  end

  test "updating a Search item" do
    visit search_items_url
    click_on "Edit", match: :first

    fill_in "Keywords", with: @search_item.keywords
    fill_in "Link", with: @search_item.link
    fill_in "Text", with: @search_item.text
    fill_in "Title", with: @search_item.title
    click_on "Update Search item"

    assert_text "Search item was successfully updated"
    click_on "Back"
  end

  test "destroying a Search item" do
    visit search_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Search item was successfully destroyed"
  end
end
