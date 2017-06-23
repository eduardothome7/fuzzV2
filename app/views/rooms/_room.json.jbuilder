json.extract! room, :id, :studio_id, :category_id, :name, :description, :price_hour, :price_weekend, :price_special_decimal, :price_late, :created_at, :updated_at
json.url room_url(room, format: :json)
