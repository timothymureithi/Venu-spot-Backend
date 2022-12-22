class AddDetailsToBooking < ActiveRecord::Migration[7.0]
  def change
    # add_column :bookings, :user_id, :integer
    add_column :bookings, :venue_id, :integer
  end
end
