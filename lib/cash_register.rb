class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end
  
  def add_item(title, price, quantity = 0)
    @total += price
  end
  
  def apply_discount()
  end
end
