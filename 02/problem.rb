# frozen_string_literal: true

INPUT = File.read(ARGV[0]).split("\n")

START = [0, 0]
def submarine_coordinates_product
    input_hash.each do |row|
        START[0] += row["forward"].to_i
        START[1] += row["down"].to_i
        START[1] -= row["up"].to_i
    end
    START[0] * START[1]
end

def input_hash(input = INPUT)
    input.map do |row|
        [row.split(" ")].to_h
    end
end
# Hash[row.split(/\s/).map { |chars| chars.split(":") }]

puts submarine_coordinates_product

