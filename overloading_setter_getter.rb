class Food
  attr_reader :weight

  def initialize(_what, weight, _cals)
    @weight = weight
  end

  # overrides the attr_reader :weight
  def weight
    puts 'used custom getter'
    2
  end

  def weight=(weight)
    puts 'used custom setter'
    @weight = weight
  end
end

# Food.new(nil,nil,nil).calories doesn't work, because is private by default

# puts Food.new(nil,nil,3).calories
food = Food.new('Salad', 300, 3)
puts food.weight
food.weight = 3 # even if i only gave it a attr_reader
puts food.weight
