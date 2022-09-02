# frozen_string_literal: true

INPUT = File.read(ARGV[0]).split("\n").map(&:to_i)
test_input_answer = 7

def increased_depth_count(measurements)
  measurements.each_with_index.count do |m, idx|
    measurements[idx + 1] > m if measurements[idx + 1]
  end
end

def check_answer(expected, actual)
  return "You're correct" if expected == actual
  return "Try Again" if expected != actual
end

puts check_answer(test_input_answer, increased_depth_count(INPUT))
