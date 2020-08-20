require 'pry'
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = number_to_percentage(discount)
  end

  def add_item(item, price, quantity = 1)
    new_price = price * quantity
    @total += new_price
  end

  def apply_discount
    # binding.pry
    @total *= (@discount / 100)
  end

end
