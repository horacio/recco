require 'test_helper'

class ThangsControllerTest < ActionController::TestCase
  setup do
    @thang = thangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thang" do
    assert_difference('Thang.count') do
      post :create, thang: { amount: @thang.amount, description: @thang.description, flyer: @thang.flyer, novelty_rating: @thang.novelty_rating, what: @thang.what, when: @thang.when, where: @thang.where }
    end

    assert_redirected_to thang_path(assigns(:thang))
  end

  test "should show thang" do
    get :show, id: @thang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thang
    assert_response :success
  end

  test "should update thang" do
    patch :update, id: @thang, thang: { amount: @thang.amount, description: @thang.description, flyer: @thang.flyer, novelty_rating: @thang.novelty_rating, what: @thang.what, when: @thang.when, where: @thang.where }
    assert_redirected_to thang_path(assigns(:thang))
  end

  test "should destroy thang" do
    assert_difference('Thang.count', -1) do
      delete :destroy, id: @thang
    end

    assert_redirected_to thangs_path
  end
end
