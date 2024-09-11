class Room < ApplicationRecord
  validates :room_name, presence: true
  validates :room_introduction, presence: true
  validates :room_fee, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :room_address, presence: true
end
