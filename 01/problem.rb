# frozen_string_literal: true

INPUT = File.read(ARGV[0]).split("\n").map(&:to_i)

# problem 1

def depth_increase_count(measurements)
  measurements.each_with_index.count do |m, idx|
    measurements[idx + 1].to_i > m
  end
end

puts depth_increase_count(INPUT)

# problem 2

def depth_increase_count_window(measurements)
  measurements.each_with_index.count do |_m, idx|
    (measurements[idx + 1..idx + 3]).sum > (measurements[idx..idx + 2]).sum
  end
end

puts depth_increase_count_window(INPUT)
