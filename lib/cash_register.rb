# require 'pry'
# class CashRegister 
#   attr_accessor :total, :discount, :last_transaction
  
#   def initialize(discount = 0)
#     @total = 0 
#     @discount = discount
#     @cart = []
#   end
  
#   def add_item(title,price,count = 1)
#     item = {}
#     item[:title] = title 
#     item[:price] = price 
#     item[:count] = count 
#     @cart << item 
#     @total += price * count 
#   end 
#   self.last_transaction = price * count 
# end 

  
#   def apply_discount
#     if @discount == 0
#       return "There is no discount to apply."
#     else 
#     @total -= @total * @discount / 100
#     return "After the discount, the total comes to $#{@total}."
#   end
# end 

#   def items
#     item_names = []
#     @cart.each do | item_info |
#       for qty in 1..item_info[:count] 
#         item_names << item_info[:title]
#       end 
#     end 
#     item_names
#   end 
  
#   def void_last_transaction
#     @total = self.total - self.last_transaction
#   end 
# end 

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction	
    
  def initialize(discount = nil)
    self.total = 0	
    self.discount = discount	
    self.items = []	
  end 
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times { self.items << title }
    self.last_transaction = [title, price, quantity]
  end 
  
  def apply_discount
    self.total == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total = self.total * 8 / 10 }."	
  end 
  
  def void_last_transaction	
    self.total -= self.last_transaction[1] * self.last_transaction[2]
    self.last_transaction[2].times do
      self.items.delete_at(self.items.index(self.last_transaction[0]) || self.items.count)
    end 
  end 
      






















































  




