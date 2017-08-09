require_relative 'renuo_exercise'

# Try to find out what the following ruby code outputs?

exercise(1) do
  (0...3).each do |i|
    puts i
  end
  # end of code
  your_answer(1) do
    # TODO: implement here: use puts for new line
  end
end

exercise(2) do
  (0..3).each do |i|
    puts i
  end
  # end of code
  your_answer(2) do
    # TODO: implement here: use puts for new line
  end
end

exercise(3) do
  [0..3].each do |i|
    puts i
  end
  # end of code
  your_answer(3) do
    # TODO: implement here: use puts for new line
  end
end

exercise(4) do
  [0...3].each do |i|
    puts i
  end
  # end of code
  your_answer(4) do
    # TODO: implement here: use puts for new line
  end
end

exercise(5) do
  %w[a b c].each do |i, _e|
    puts i
  end
  # end of code
  your_answer(5) do
    # TODO: implement here: use puts for new line
  end
end

exercise(6) do
  %w[a b c].each_with_index do |_a, b|
    puts b
  end
  # end of code
  your_answer(6) do
    # TODO: implement here: use puts for new line
  end
end
