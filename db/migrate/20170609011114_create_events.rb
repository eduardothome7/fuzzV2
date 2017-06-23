class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_at
      t.datetime :end_at
      t.decimal :amount
      t.integer :room_id
      t.integer :user_id
      t.text :invites
      t.text :description
      t.integer :category_id
      t.integer :status_id

      t.timestamps
    end
  end
end
