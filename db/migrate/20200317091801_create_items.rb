class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :user_id,   foreign_key: true, null: false
      t.integer :room_id,   foreign_key: true, null: false
      t.string :item_name,       null: false
      t.integer :item_cost,      null:false
      t.date :item_change,       null:false
      t.text :item_img
      t.timestamps
    end
  end
end
