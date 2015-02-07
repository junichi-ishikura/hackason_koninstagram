class CreateCustomizes < ActiveRecord::Migration
  def change
    create_table :customizes do |t|
      t.integer :material_id
      t.string :waku_id
      t.integer :user_id
      t.integer :color_id

      t.timestamps null: false
    end
  end
end
