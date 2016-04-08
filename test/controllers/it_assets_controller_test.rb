require 'test_helper'

class ItAssetsControllerTest < ActionController::TestCase
  setup do
    @it_asset = it_assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:it_assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create it_asset" do
    assert_difference('ItAsset.count') do
      post :create, it_asset: { category: @it_asset.category, name: @it_asset.name, need_id: @it_asset.need_id }
    end

    assert_redirected_to it_asset_path(assigns(:it_asset))
  end

  test "should show it_asset" do
    get :show, id: @it_asset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @it_asset
    assert_response :success
  end

  test "should update it_asset" do
    patch :update, id: @it_asset, it_asset: { category: @it_asset.category, name: @it_asset.name, need_id: @it_asset.need_id }
    assert_redirected_to it_asset_path(assigns(:it_asset))
  end

  test "should destroy it_asset" do
    assert_difference('ItAsset.count', -1) do
      delete :destroy, id: @it_asset
    end

    assert_redirected_to it_assets_path
  end
end
