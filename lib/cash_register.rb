class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction_amount
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  
  def add_item(name, price, quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << name 
        i+=1
      end
    else
      @items << name
    end
    @total += price*quantity
    @last_transaction_amount = @total
    #@total
    #@last_transaction_amount
  end
  
  def apply_discount()
    if @discount > 0 
      @discount = @discount.to_f / 100
      @total = @total - (@total * (@discount))
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  # def void_last_transaction
  #   @total -= @last_transaction_amount
  # end
  
  # def void_last_transaction
  #   self.total = self.total - self.last_transaction_amount
  # end
  
end
