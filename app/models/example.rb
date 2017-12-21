class Example < ApplicationRecord
  def total
    item_price * purchase_count
  end
end
