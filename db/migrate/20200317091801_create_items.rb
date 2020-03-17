class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :user_id,   foreign_key: true, null: false
      t.integer :room_id,   foreign_key: true, null: false
      t.string :name,       null: false
      t.integer :cost,      null:false
      t.date :change,       null:false
      t.text :img
      t.timestamps
    end
  end
end
