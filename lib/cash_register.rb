
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    new_price = price * quantity
    @total += new_price
  end

  def apply_discount
    @total *= @discount.to_f
  end

end
