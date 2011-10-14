class LineItem < ActiveRecord::Base
  # link from the line item to the carts and products tables
  # if a table has foreign keys, the corresponding model should have a belongs_to for each.
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
