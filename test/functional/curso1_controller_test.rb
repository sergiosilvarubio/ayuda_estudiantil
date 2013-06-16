require 'test_helper'

class Curso1ControllerTest < ActionController::TestCase
  test "should get curso1" do
    get :curso1
    assert_response :success
  end

end
