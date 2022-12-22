class Venue < ApplicationRecord
    # belongs_to :user
    # belongs_to :manager
    has_many :reviews

    validate :description, length: { maximum: 50}
end
