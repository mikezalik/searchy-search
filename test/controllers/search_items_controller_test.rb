require 'test_helper'

class SearchItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_item = search_items(:one)
  end

  test "should get index" do
    get search_items_url
    assert_response :success
  end

  test "should get new" do
    get new_search_item_url
    assert_response :success
  end

  test "should create search_item" do
    assert_difference('SearchItem.count') do
      post search_items_url, params: { search_item: { keywords: @search_item.keywords, link: @search_item.link, text: @search_item.text, title: @search_item.title } }
    end

    assert_redirected_to search_item_url(SearchItem.last)
  end

  test "should show search_item" do
    get search_item_url(@search_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_item_url(@search_item)
    assert_response :success
  end

  test "should update search_item" do
    patch search_item_url(@search_item), params: { search_item: { keywords: @search_item.keywords, link: @search_item.link, text: @search_item.text, title: @search_item.title } }
    assert_redirected_to search_item_url(@search_item)
  end

  test "should destroy search_item" do
    assert_difference('SearchItem.count', -1) do
      delete search_item_url(@search_item)
    end

    assert_redirected_to search_items_url
  end
end
