class Order < ApplicationRecord
  validates :name, :email, presence: true
  
  has_many :order_items, dependent: :destroy

  def add_order_items_from_cart(cart)
    cart.order_items.each do |order_item|
      order_item.cart_id = nil
      order_items << order_item
    end
  end
end
