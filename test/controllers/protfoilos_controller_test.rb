require "test_helper"

class ProtfoilosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @protfoilo = protfoilos(:one)
  end

  test "should get index" do
    get protfoilos_url
    assert_response :success
  end

  test "should get new" do
    get new_protfoilo_url
    assert_response :success
  end

  test "should create protfoilo" do
    assert_difference("Protfoilo.count") do
      post protfoilos_url, params: { protfoilo: { social_media: @protfoilo.social_media, user_id: @protfoilo.user_id } }
    end

    assert_redirected_to protfoilo_url(Protfoilo.last)
  end

  test "should show protfoilo" do
    get protfoilo_url(@protfoilo)
    assert_response :success
  end

  test "should get edit" do
    get edit_protfoilo_url(@protfoilo)
    assert_response :success
  end

  test "should update protfoilo" do
    patch protfoilo_url(@protfoilo), params: { protfoilo: { social_media: @protfoilo.social_media, user_id: @protfoilo.user_id } }
    assert_redirected_to protfoilo_url(@protfoilo)
  end

  test "should destroy protfoilo" do
    assert_difference("Protfoilo.count", -1) do
      delete protfoilo_url(@protfoilo)
    end

    assert_redirected_to protfoilos_url
  end
end
