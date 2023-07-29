class CreateStaffMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :staff_members do |t|
      t.string :name

      t.timestamps
    end
  end
end
