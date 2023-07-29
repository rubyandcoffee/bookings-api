class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :service_id, null: false
      t.integer :staff_member_id, null: false
      t.integer :customer_id, null: false
      t.datetime :date, null: false
      t.boolean :status, null: false

      t.timestamps
    end
  end
end
