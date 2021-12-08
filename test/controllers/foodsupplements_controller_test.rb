require "test_helper"

class FoodsupplementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foodsupplement = foodsupplements(:one)
  end

  test "should get index" do
    get foodsupplements_url
    assert_response :success
  end

  test "should get new" do
    get new_foodsupplement_url
    assert_response :success
  end

  test "should create foodsupplement" do
    assert_difference('Foodsupplement.count') do
      post foodsupplements_url, params: { foodsupplement: { articlenum: @foodsupplement.articlenum, category: @foodsupplement.category, name: @foodsupplement.name, price: @foodsupplement.price, rating: @foodsupplement.rating } }
    end

    assert_redirected_to foodsupplement_url(Foodsupplement.last)
  end

  test "should show foodsupplement" do
    get foodsupplement_url(@foodsupplement)
    assert_response :success
  end

  test "should get edit" do
    get edit_foodsupplement_url(@foodsupplement)
    assert_response :success
  end

  test "should update foodsupplement" do
    patch foodsupplement_url(@foodsupplement), params: { foodsupplement: { articlenum: @foodsupplement.articlenum, category: @foodsupplement.category, name: @foodsupplement.name, price: @foodsupplement.price, rating: @foodsupplement.rating } }
    assert_redirected_to foodsupplement_url(@foodsupplement)
  end

  test "should destroy foodsupplement" do
    assert_difference('Foodsupplement.count', -1) do
      delete foodsupplement_url(@foodsupplement)
    end

    assert_redirected_to foodsupplements_url
  end
end
