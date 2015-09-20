require 'test_helper'

class BoatDetailsControllerTest < ActionController::TestCase
  setup do
    @boat_detail = boat_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boat_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boat_detail" do
    assert_difference('BoatDetail.count') do
      post :create, boat_detail: { boat-manufacturing_code: @boat_detail.boat-manufacturing_code, boat_color: @boat_detail.boat_color, boat_make: @boat_detail.boat_make, boat_model: @boat_detail.boat_model }
    end

    assert_redirected_to boat_detail_path(assigns(:boat_detail))
  end

  test "should show boat_detail" do
    get :show, id: @boat_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boat_detail
    assert_response :success
  end

  test "should update boat_detail" do
    patch :update, id: @boat_detail, boat_detail: { boat-manufacturing_code: @boat_detail.boat-manufacturing_code, boat_color: @boat_detail.boat_color, boat_make: @boat_detail.boat_make, boat_model: @boat_detail.boat_model }
    assert_redirected_to boat_detail_path(assigns(:boat_detail))
  end

  test "should destroy boat_detail" do
    assert_difference('BoatDetail.count', -1) do
      delete :destroy, id: @boat_detail
    end

    assert_redirected_to boat_details_path
  end
end
