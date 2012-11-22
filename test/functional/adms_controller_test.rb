require 'test_helper'

class AdmsControllerTest < ActionController::TestCase
  setup do
    @adm = adms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adm" do
    assert_difference('Adm.count') do
      post :create, adm: @adm.attributes
    end

    assert_redirected_to adm_path(assigns(:adm))
  end

  test "should show adm" do
    get :show, id: @adm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adm
    assert_response :success
  end

  test "should update adm" do
    put :update, id: @adm, adm: @adm.attributes
    assert_redirected_to adm_path(assigns(:adm))
  end

  test "should destroy adm" do
    assert_difference('Adm.count', -1) do
      delete :destroy, id: @adm
    end

    assert_redirected_to adms_path
  end
end
