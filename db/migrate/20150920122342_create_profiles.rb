class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.text :email
      t.integer :contact_phone_no
      t.text :emergency_contact_name
      t.integer :emergency_contact_phone_no

      t.timestamps null: false
    end
  end
end
