class Pizza

  # def initialize(topping)

  # end
end

class Topping
attr_accessor :name, :vegetarian

  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

end
