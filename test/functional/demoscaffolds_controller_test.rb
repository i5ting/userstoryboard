require 'test_helper'

class DemoscaffoldsControllerTest < ActionController::TestCase
  setup do
    @demoscaffold = demoscaffolds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demoscaffolds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demoscaffold" do
    assert_difference('Demoscaffold.count') do
      post :create, demoscaffold: { body: @demoscaffold.body, title: @demoscaffold.title }
    end

    assert_redirected_to demoscaffold_path(assigns(:demoscaffold))
  end

  test "should show demoscaffold" do
    get :show, id: @demoscaffold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demoscaffold
    assert_response :success
  end

  test "should update demoscaffold" do
    put :update, id: @demoscaffold, demoscaffold: { body: @demoscaffold.body, title: @demoscaffold.title }
    assert_redirected_to demoscaffold_path(assigns(:demoscaffold))
  end

  test "should destroy demoscaffold" do
    assert_difference('Demoscaffold.count', -1) do
      delete :destroy, id: @demoscaffold
    end

    assert_redirected_to demoscaffolds_path
  end
end
