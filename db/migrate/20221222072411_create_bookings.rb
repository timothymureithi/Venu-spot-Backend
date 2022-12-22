class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :endDate
      t.string :startDate
      t.string :duration
      t.string :num_guest

      t.timestamps
    end
  end
end
