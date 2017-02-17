class Order < ApplicationRecord
  belongs_to :food_item
  validates :quantiy, presence: true, numericality: true
end
