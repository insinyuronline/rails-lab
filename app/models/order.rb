class Order < ApplicationRecord
  validates :name, :email, presence: true
  
  has_many :order_items, dependent: :destroy

  def add_order_items_from_cart(cart)
    cart.order_items.each do |order_item|
      order_item.cart_id = nil
      order_items << order_item
    end
  end

  def total_price
    order_items.to_a.sum { |order_item| order_item.total_price }
  end
end
