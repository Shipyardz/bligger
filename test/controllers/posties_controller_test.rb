require 'test_helper'

class PostiesControllerTest < ActionController::TestCase
  setup do
    @posty = posties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create posty" do
    assert_difference('Posty.count') do
      post :create, posty: {  }
    end

    assert_redirected_to posty_path(assigns(:posty))
  end

  test "should show posty" do
    get :show, id: @posty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @posty
    assert_response :success
  end

  test "should update posty" do
    patch :update, id: @posty, posty: {  }
    assert_redirected_to posty_path(assigns(:posty))
  end

  test "should destroy posty" do
    assert_difference('Posty.count', -1) do
      delete :destroy, id: @posty
    end

    assert_redirected_to posties_path
  end
end
