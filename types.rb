# It's not always easy to read ruby
class Food
  attr_reader :itisa

  def initialize(what, weight, cals)
    @itisa = what
    @weight = weight
    @calories = cals
  end

  def getcalories
    val = @calories * @weight / 100.0
    format('%7.2f', val)
  end
end

bacon = Food.new 'Bacon Sarnie', 75, 200
pear = Food.new 'Comice Pear', 47, 40
om = Food.new 'Orange Milk', 250, 70
lunch = [bacon, pear, om]

lunch.each do |current|
  cals = current.getcalories
  wot = current.itisa
  puts "This #{wot} has #{cals} calories"
end

# Other Example:
def my_function(argument_a, argument_b, *args)
  puts argument_a
  puts argument_b
  puts args
end

my_function 'a', 'b'
puts '---'
my_function 'a', 'b', 'c', 'd'
puts '---'

def some_method(a, my_hash, b)
  p a
  p my_hash
  p b
end

some_method 'Hello', { first: 'abc', second: '123' }, 'World'
puts '---'
# Would that also work?
# some_method 'Hello', first: 'abc', second: '123', 'World'

# Whats confusing?
t = { first_name: 'Simon' }
puts t
puts '---'

# Which is the right choice?
# puts t.first_name
# puts t[:first_name]
# puts t['first_name']

# How can i define a hash to call it like that? `puts t['first_name']`
t2 = { 'first_name': 'Simon' }
t3 = { 'first_name' => 'Simon' }
puts t2['first_name']
puts t3['first_name']
