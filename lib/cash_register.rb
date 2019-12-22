require 'pry'
class CashRegister 
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @cart = []
  end
  
  def add_item(title,price,count = 1)
    item = {}
    item[:title] = title 
    item[:price] = price 
    item[:count] = count 
    @cart << item 
    @total += price * count 
  end 
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else 
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end
end 

def items
    item_names = []
    @cart.each do | item_info |
      for qty in 1..item_info[:count] 
        item_names << item_info[:title]
      end 
    end 
    item_names
  end 
end 

  




