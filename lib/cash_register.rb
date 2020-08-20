require 'pry'
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
    # binding.pry
    new_total = @total * (@discount.to_f / 100)
    @total -= new_total
    puts "After the discount, the total comes to $#{@total}."

  end

end
