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

# You should use braces, if it's unclear what it does (if no braces is now object divided or 200?)
bacon = Food.new 'Bacon Sarnie', 75, (200 / 20)
# Otherwise it also works without braces
pear = Food.new 'Comice Pear', 47, 40
om = Food.new 'Orange Milk', 250, 70
lunch = [bacon, pear, om]

lunch.each do |current|
  # it's not obvious that this is a function
  cals = current.getcalories
  # indirectly also this is a function. attr_reader makes a getter-method
  wot = current.itisa
  # Interpolation is done like that.
  puts "This #{wot} has #{cals} calories"
end

# The splat-operator just gather up any remaining arguments
def my_function(argument_a, argument_b, *args)
  puts argument_a
  puts argument_b
  p args.class.name # this is now an array
  puts args
end

my_function 'a', 'b'
puts '---'
my_function 'a', 'b', 'c', 'd'
puts '---'

def some_method(a, b, c)
  p a
  p b
  p c
end

# This is often used in Rails for option parameters and can be confusing
some_method 'Hello', 'b', first: 'abc', second: '123'
# this is the same as this:
some_method 'Hello', 'b', { first: 'abc', second: '123' }
puts '---'
# Would that also work?
# some_method 'Hello', first: 'abc', second: '123', 'World'

# The answer is no, you need it in that case
some_method 'Hello', { first: 'abc', second: '123' }, 'World'

# Whats confusing?
t = { first_name: 'Simon' }
puts t
puts '---'

# Which is the right choice?
# puts t.first_name
puts t[:first_name]
puts t['first_name']

# How can i define a hash to call it like that? `puts t['first_name']`
t2 = {'first_name': 'Simon'}
t3 = {'first_name' => 'Simon'}
# {'first_name'.to_sym => 'Simon'} would be same as t2
# { %(first_name) => 'Simon'} would be same as t2
puts 'xx------'
puts t2[:first_name]
puts t3['first_name']
