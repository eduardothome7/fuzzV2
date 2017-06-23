json.extract! event, :id, :title, :start_at, :end_at, :amount, :room_id, :user_id, :invites, :description, :category_id, :status_id, :created_at, :updated_at
json.url event_url(event, format: :json)
