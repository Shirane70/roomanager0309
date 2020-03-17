class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :user_id,   foreign_key: true, null: false
      t.string :type
      t.integer :cost
      t.date :change
      t.text :img
      t.timestamps
    end
  end
end
