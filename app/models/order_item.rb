class OrderItem < ApplicationRecord
  belongs_to :food
  belongs_to :cart
end