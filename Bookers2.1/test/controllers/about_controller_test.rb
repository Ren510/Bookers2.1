require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get about_index_url
    assert_response :success
  end

  test "should get show" do
    get about_show_url
    assert_response :success
  end

  test "should get new" do
    get about_new_url
    assert_response :success
  end

  test "should get edit" do
    get about_edit_url
    assert_response :success
  end

end
