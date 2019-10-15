require 'test_helper'

class AviariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aviary = aviaries(:one)
  end

  test "should get index" do
    get aviaries_url
    assert_response :success
  end

  test "should get new" do
    get new_aviary_url
    assert_response :success
  end

  test "should create aviary" do
    assert_difference('Aviary.count') do
      post aviaries_url, params: { aviary: { description: @aviary.description, name: @aviary.name } }
    end

    assert_redirected_to aviary_url(Aviary.last)
  end

  test "should show aviary" do
    get aviary_url(@aviary)
    assert_response :success
  end

  test "should get edit" do
    get edit_aviary_url(@aviary)
    assert_response :success
  end

  test "should update aviary" do
    patch aviary_url(@aviary), params: { aviary: { description: @aviary.description, name: @aviary.name } }
    assert_redirected_to aviary_url(@aviary)
  end

  test "should destroy aviary" do
    assert_difference('Aviary.count', -1) do
      delete aviary_url(@aviary)
    end

    assert_redirected_to aviaries_url
  end
end
