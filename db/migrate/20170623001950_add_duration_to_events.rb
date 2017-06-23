class AddDurationToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :duration, :string
    add_column :events, :integer, :string
  end
end
