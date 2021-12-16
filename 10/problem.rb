INPUT = File.read(ARGV[0]).split("")

OPENING_CHARS = [ "(", "[", "{", "<" ]
BRACKET_MAP = {
")"=> "(",
"]"=> "[",
"}"=> "{",
">"=> "<"
}
CLOSING_CHARS = [ ")", "]", "}", ">"]

STACK = []
DISCARD = []

def validate_chunk(input)
  x = input.map do |char|
    if OPENING_CHARS.include?(char)
      STACK << char
    elsif CLOSING_CHARS.include?(char) && STACK.last == BRACKET_MAP[char]
      STACK.pop
      DISCARD << char
    else
      return "expected #{STACK.pop}, but found #{char} instead"
    end
  end
end

puts validate_chunk(INPUT)
