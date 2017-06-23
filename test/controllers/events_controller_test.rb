require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { amount: @event.amount, category_id: @event.category_id, description: @event.description, end_at: @event.end_at, invites: @event.invites, room_id: @event.room_id, start_at: @event.start_at, status_id: @event.status_id, title: @event.title, user_id: @event.user_id } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { amount: @event.amount, category_id: @event.category_id, description: @event.description, end_at: @event.end_at, invites: @event.invites, room_id: @event.room_id, start_at: @event.start_at, status_id: @event.status_id, title: @event.title, user_id: @event.user_id } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
