require 'test_helper'

class PorcelainsControllerTest < ActionController::TestCase
  setup do
    @porcelain = porcelains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:porcelains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create porcelain" do
    assert_difference('Porcelain.count') do
      post :create, porcelain: { image: @porcelain.image, name: @porcelain.name }
    end

    assert_redirected_to porcelain_path(assigns(:porcelain))
  end

  test "should show porcelain" do
    get :show, id: @porcelain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @porcelain
    assert_response :success
  end

  test "should update porcelain" do
    put :update, id: @porcelain, porcelain: { image: @porcelain.image, name: @porcelain.name }
    assert_redirected_to porcelain_path(assigns(:porcelain))
  end

  test "should destroy porcelain" do
    assert_difference('Porcelain.count', -1) do
      delete :destroy, id: @porcelain
    end

    assert_redirected_to porcelains_path
  end
end
