class CreateBoatDetails < ActiveRecord::Migration
  def change
    create_table :boat_details do |t|
      t.text :boat_make
      t.text :boat_manufacturing_code
      t.text :boat_model
      t.text :boat_color

      t.timestamps null: false
    end
  end
end
