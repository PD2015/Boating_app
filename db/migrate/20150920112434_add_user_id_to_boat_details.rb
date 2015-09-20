class AddUserIdToBoatDetails < ActiveRecord::Migration
  def change
    add_column :boat_details, :user_id, :integer
    add_index :boat_details, :user_id
  end
end
