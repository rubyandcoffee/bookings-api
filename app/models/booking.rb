class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :staff_member
  has_one :service
end
