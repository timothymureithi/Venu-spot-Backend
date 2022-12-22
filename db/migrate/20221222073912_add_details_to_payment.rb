class AddDetailsToPayment < ActiveRecord::Migration[7.0]
  def change
    # add_column :payments, :user_id, :integer
    add_column :payments, :booking_id, :integer
  end
end
