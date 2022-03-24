require "test_helper"

class CustomerControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get customer_search_url
    assert_response :success
  end
end
