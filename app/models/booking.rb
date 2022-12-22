class Booking < ApplicationRecord
    # belongs_to :user
    belongs_to :venue
    has_many :payments 
    

    validates :startDate, comparison: { greater_than: :endDate }
end
