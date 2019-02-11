class Order
  def initialize
    @line_items = []
  end

  def add_entry(name, price:, quantity:)
    @line_items << [name, price, quantity]
  end

  def total
    @line_items.reduce(0) do |total, (name, price, quantity)|
      total + price*quantity
    end 
  end
end
