require 'test_helper'

class ProdcutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prodcut = prodcuts(:one)
  end

  test "should get index" do
    get prodcuts_url
    assert_response :success
  end

  test "should get new" do
    get new_prodcut_url
    assert_response :success
  end

  test "should create prodcut" do
    assert_difference('Prodcut.count') do
      post prodcuts_url, params: { prodcut: { brand: @prodcut.brand, category_id: @prodcut.category_id, description: @prodcut.description, name: @prodcut.name, price: @prodcut.price, quantity: @prodcut.quantity, rating: @prodcut.rating } }
    end

    assert_redirected_to prodcut_url(Prodcut.last)
  end

  test "should show prodcut" do
    get prodcut_url(@prodcut)
    assert_response :success
  end

  test "should get edit" do
    get edit_prodcut_url(@prodcut)
    assert_response :success
  end

  test "should update prodcut" do
    patch prodcut_url(@prodcut), params: { prodcut: { brand: @prodcut.brand, category_id: @prodcut.category_id, description: @prodcut.description, name: @prodcut.name, price: @prodcut.price, quantity: @prodcut.quantity, rating: @prodcut.rating } }
    assert_redirected_to prodcut_url(@prodcut)
  end

  test "should destroy prodcut" do
    assert_difference('Prodcut.count', -1) do
      delete prodcut_url(@prodcut)
    end

    assert_redirected_to prodcuts_url
  end
end
