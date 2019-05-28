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
    @total = @total - (@total * discount/100.0)
  end
end
