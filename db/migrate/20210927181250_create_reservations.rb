class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :check_in
      t.date :check_out
      t.integer :listing_id
      t.integer :guest_id
      t.timestamps null:false
      t.string :status, default: "pending"
    end
  end
end
