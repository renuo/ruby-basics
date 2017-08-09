require 'date'
require_relative 'renuo_exercise'

exercise(1) do
  start_date = Date.parse('2001-02-03')
  end_date = start_date + 7
  (start_date...end_date).each do |date|
    puts "#{date.year}-#{date.month}-#{date.day}"
  end
  # end of code
  your_answer(1) do
    # TODO: implement here: use puts for new line
  end
end

# Exercise 2: could i use `puts start_date` here? Try it out ;-)

exercise(3) do
  start_date = Date.parse('2001-02-05') # this is a monday
  end_date = start_date + 7
  (start_date...end_date).each do |date|
    puts date.wednesday?.to_s
  end
  # end of code
  your_answer(3) do
    # TODO: implement here: use puts for new line
  end
end
