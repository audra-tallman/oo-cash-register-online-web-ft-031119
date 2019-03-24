
#doesnt forget about the previous total
# apply_discount method
  #if inizialized w/ employee discount, then applies the discount to total price, returns success message with updated total and reduces the total
  #if not using employee discound, then returns a string error message that there is no discount to apply
# items method returns an array containing all items that have been added
#void last transaction method that subtracts the last transaction from the total


class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
       @items << item
    end
    self.last_transaction = price * quantity
    end
  end                   
  
  def apply_discount()
    if discount !=0
      self.total = (total *((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."  
    end
  end
  
  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - @last_transaction  
  end
