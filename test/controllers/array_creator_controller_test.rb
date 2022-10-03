require "test_helper"

class ArrayCreatorControllerTest < ActionDispatch::IntegrationTest
  test "should get number_of_array_elements" do
    get array_creator_number_of_array_elements_url
    assert_response :success
  end
end
