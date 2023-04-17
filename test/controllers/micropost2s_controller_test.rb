require 'test_helper'

class Micropost2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micropost2 = micropost2s(:one)
  end

  test "should get index" do
    get micropost2s_url
    assert_response :success
  end

  test "should get new" do
    get new_micropost2_url
    assert_response :success
  end

  test "should create micropost2" do
    assert_difference('Micropost2.count') do
      post micropost2s_url, params: { micropost2: { content: @micropost2.content, user_id: @micropost2.user_id } }
    end

    assert_redirected_to micropost2_url(Micropost2.last)
  end

  test "should show micropost2" do
    get micropost2_url(@micropost2)
    assert_response :success
  end

  test "should get edit" do
    get edit_micropost2_url(@micropost2)
    assert_response :success
  end

  test "should update micropost2" do
    patch micropost2_url(@micropost2), params: { micropost2: { content: @micropost2.content, user_id: @micropost2.user_id } }
    assert_redirected_to micropost2_url(@micropost2)
  end

  test "should destroy micropost2" do
    assert_difference('Micropost2.count', -1) do
      delete micropost2_url(@micropost2)
    end

    assert_redirected_to micropost2s_url
  end
end
