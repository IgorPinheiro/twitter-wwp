require 'test_helper'

class TwitteersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twitteer = twitteers(:one)
  end

  test "should get index" do
    get twitteers_url
    assert_response :success
  end

  test "should get new" do
    get new_twitteer_url
    assert_response :success
  end

  test "should create twitteer" do
    assert_difference('Twitteer.count') do
      post twitteers_url, params: { twitteer: { twitteer: @twitteer.twitteer } }
    end

    assert_redirected_to twitteer_url(Twitteer.last)
  end

  test "should show twitteer" do
    get twitteer_url(@twitteer)
    assert_response :success
  end

  test "should get edit" do
    get edit_twitteer_url(@twitteer)
    assert_response :success
  end

  test "should update twitteer" do
    patch twitteer_url(@twitteer), params: { twitteer: { twitteer: @twitteer.twitteer } }
    assert_redirected_to twitteer_url(@twitteer)
  end

  test "should destroy twitteer" do
    assert_difference('Twitteer.count', -1) do
      delete twitteer_url(@twitteer)
    end

    assert_redirected_to twitteers_url
  end
end
