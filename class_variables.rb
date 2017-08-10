class Food
  attr_accessor :what
  attr_reader :weight

  def initialize(what, weight, cals)
    @what = what
    @weight = weight
    @calories = cals
    # puts self.calories does not work because getter is not defined
    puts self.weight
    # getcalories # this is a redundant self
  end

  def getcalories
    val = @calories * @weight / 100.0
    format('%7.2f', val)
  end
end

# Food.new(nil,nil,nil).calories doesn't work, because is private by default

# puts Food.new(nil,nil,3).calories
food = Food.new('Salad', 300, 3)
puts food.weight
food.what = 'Something'
food.what
