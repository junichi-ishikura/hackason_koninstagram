class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :factory_id
      t.date :appoint_date
      t.integer :user_id
      t.integer :customize_id

      t.timestamps null: false
    end
  end
end
