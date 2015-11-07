require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get archive" do
    get :archive
    assert_response :success
  end

  test "should get contacts" do
    get :contacts
    assert_response :success
  end

end
