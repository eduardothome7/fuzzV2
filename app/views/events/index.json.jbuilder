json.array! @events do |event|
  json.title event.title
  json.start event.start_at
  json.end event.end_at
  json.update_url event_path(event, method: :patch)
  json.edit_url edit_event_path(event)
end