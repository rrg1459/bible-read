require "test_helper"

class BibleControllerTest < ActionDispatch::IntegrationTest
  test "should get select" do
    get bible_select_url
    assert_response :success
  end

  test "should get read" do
    get bible_read_url
    assert_response :success
  end
end
