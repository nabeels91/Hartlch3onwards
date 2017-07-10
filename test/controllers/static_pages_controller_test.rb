require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest


test "should get root" do
  get static_pages_home_url
  assert_response :success
end


def setup
  @repeated_text  = "Ruby on Rails Tutorial Sample App"
end





  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@repeated_text}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@repeated_text}"
  end
	
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@repeated_text}"
  end

  test "should get contactUs" do
    get static_pages_contactus_url
    assert_response :success
    assert_select "title", "Contact Us | #{@repeated_text}"
  end

end
