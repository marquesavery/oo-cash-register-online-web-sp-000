require 'pry'
class CashRegister

  attr_accessor :total, :discount, @item_list

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    new_price = price * quantity
    @total += new_price
    @@all << item
  end

  def apply_discount
    # binding.pry
    if @discount == 0
      "There is no discount to apply."
    else
      new_total = @total * (@discount.to_f / 100)
      @total -= new_total.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@all
  end

end
