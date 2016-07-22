require 'pry'

class CashRegister
attr_accessor :discount, :total, :last_transaction



  def initialize(discount = 0)
    @total = 0
      @discount = discount
      @all = []
  end

  #discount is defaulted to zero because optional discount is always defaulted
  #to zero. total equals zero at the moment because the total amount is not yet
  #added. @all is a empty instance varaiable.

  def add_item(title, price, quantity = 1)

    self.total += quantity * price
    @last_transaction = quantity * price
        until quantity == 0
          @all << title
            quantity -= 1
        end
end

#self.total referes to the total of the instance self. Find the new total when
#times quantity and price. Until each quantity is added into the @all array add
#item. @last_transaction is equal to the last quanitity and price.


  def apply_discount
    create_into_float = @discount/100.0
      times_by_hundred = @total * create_into_float
        result = @total - times_by_hundred.to_i
          if @discount != 0
          @total = result
            "After the discount, the total comes to $800."
          else
            "There is no discount to apply."
          end
  end

  def items
    @all
  end

  def void_last_transaction
    @total -= @last_transaction
  end

  #void last trans is returning the amount reducted from the total.





end
