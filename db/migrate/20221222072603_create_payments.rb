class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :venue_price

      t.timestamps
    end
  end
end
