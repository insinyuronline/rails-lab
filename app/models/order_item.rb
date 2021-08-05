class OrderItem < ApplicationRecord
  belongs_to :food
  belongs_to :cart

  def total_price
    food.price * quantity
  end
end
