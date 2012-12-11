require 'test_helper'

class CommonAllergensControllerTest < ActionController::TestCase
  setup do
    @common_allergen = common_allergens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:common_allergens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create common_allergen" do
    assert_difference('CommonAllergen.count') do
      post :create, common_allergen: {  }
    end

    assert_redirected_to common_allergen_path(assigns(:common_allergen))
  end

  test "should show common_allergen" do
    get :show, id: @common_allergen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @common_allergen
    assert_response :success
  end

  test "should update common_allergen" do
    put :update, id: @common_allergen, common_allergen: {  }
    assert_redirected_to common_allergen_path(assigns(:common_allergen))
  end

  test "should destroy common_allergen" do
    assert_difference('CommonAllergen.count', -1) do
      delete :destroy, id: @common_allergen
    end

    assert_redirected_to common_allergens_path
  end
end
