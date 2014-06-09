class Pizza
attr_accessor :toppings, :name

  def initialize(toppings = [Topping.new('cheese', vegetarian: true)])
    @toppings = toppings
  end

  def vegetarian?
    @toppings.all?{|t| t.vegetarian == true}
  end

  def add_topping(topping)
    @toppings << Topping.new(name, vegetarian: false)
  end

  def deliver!(delivery_time=Time.now)
    @delivery_time = delivery_time

  end

end

class Topping
attr_accessor :name, :vegetarian

  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

end
