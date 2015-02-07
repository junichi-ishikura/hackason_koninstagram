class CreateMaterial < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
