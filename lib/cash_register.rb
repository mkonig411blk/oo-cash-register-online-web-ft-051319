class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do 
    @total += price
  end
  end
  
  def apply_discount
    # discount comes in as 20(%) instead of .20, so we divide by 100.0 so it is float and not an integer -- integers cannot have decimal values
    @total = @total - (@total*(self.discount/100.0))
    "After the discount, the total comes to $#{@total.to_i}."
  end
end
