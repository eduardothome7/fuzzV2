class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :studio_id
      t.integer :category_id
      t.string :name
      t.string :description
      t.decimal :price_hour
      t.decimal :price_weekend
      t.string :price_special_decimal
      t.decimal :price_late

      t.timestamps
    end
  end
end
