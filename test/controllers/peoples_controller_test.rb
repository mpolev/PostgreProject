require 'test_helper'

class PeoplesControllerTest < ActionController::TestCase
  test "should get Index" do
    get :Index
    assert_response :success
  end

  test "should get All" do
    get :All
    assert_response :success
  end

  test "should get Edit" do
    get :Edit
    assert_response :success
  end

  test "should get Delete" do
    get :Delete
    assert_response :success
  end

  test "should get Show" do
    get :Show
    assert_response :success
  end

end
