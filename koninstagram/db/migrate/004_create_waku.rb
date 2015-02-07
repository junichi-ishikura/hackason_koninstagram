class CreateWaku < ActiveRecord::Migration
  def change
    create_table :wakus do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
