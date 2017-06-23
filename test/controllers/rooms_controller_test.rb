require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_room_url
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post rooms_url, params: { room: { category_id: @room.category_id, description: @room.description, name: @room.name, price_hour: @room.price_hour, price_late: @room.price_late, price_special_decimal: @room.price_special_decimal, price_weekend: @room.price_weekend, studio_id: @room.studio_id } }
    end

    assert_redirected_to room_url(Room.last)
  end

  test "should show room" do
    get room_url(@room)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_url(@room)
    assert_response :success
  end

  test "should update room" do
    patch room_url(@room), params: { room: { category_id: @room.category_id, description: @room.description, name: @room.name, price_hour: @room.price_hour, price_late: @room.price_late, price_special_decimal: @room.price_special_decimal, price_weekend: @room.price_weekend, studio_id: @room.studio_id } }
    assert_redirected_to room_url(@room)
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete room_url(@room)
    end

    assert_redirected_to rooms_url
  end
end
