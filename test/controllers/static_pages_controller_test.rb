require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest


def setup
  @repeated_text  = "Ruby on Rails Tutorial Sample App"
end

  test "should get home" do
    get root_path
    assert_response :success
     assert_select "title", "Home | #{@repeated_text}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@repeated_text}"
  end
	
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@repeated_text}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@repeated_text}"
  end

end
