class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :user_id,   foreign_key: true, null: false
      t.string :room_name
      t.integer :room_cost
      t.date :room_change
      t.text :room_img
      t.timestamps
    end
  end
end
