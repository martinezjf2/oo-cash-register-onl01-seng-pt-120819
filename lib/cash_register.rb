
class CashRegister
attr_accessor :discount, :items, :last_transaction, :total

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end

# def add_item(name, cost, number = 1)
  # self.total = cost * number #Explain this to me!
  # @items << name
  # end

  def add_item(title,price,quantity = 1) #need help on explaning this method
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction = price*quantity
    @total
  end

def apply_discount
   if @discount > 0
     @discount = @discount/100.to_f
     @total = @total - (@total * (@discount))
    "After the discount, the total comes to $#{@total.to_i}."
   else
    "There is no discount to apply."   #why can't we use puts?
   end
 end

def void_last_transaction
  @total -= @last_transaction

end







end
