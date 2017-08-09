def exercise(example_number)
  puts "# Example #{example_number}\n"

  yield
end

def your_answer(example_number)
  puts "\nYour answer for example: #{example_number}"

  yield
  puts "\n\n"
end
