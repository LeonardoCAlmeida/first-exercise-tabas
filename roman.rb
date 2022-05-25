puts 'Type a natural number to convert to roman: '
number = gets.chomp.to_i
num = number
signs = {
  M: 1000,
  CM: 900,
  D: 500,
  CD: 400,
  C: 100,
  XC: 90,
  L: 50,
  XL: 40,
  X: 10,
  IX: 9,
  V: 5,
  IV: 4,
  I: 1
}

result = ""

signs.keys.each do |letter|
  while number > 0 && number >= signs[letter]
    number -= signs[letter]
    result += letter.to_s if number >= 0
  end
end

puts "#{num} in roman is: #{result}"
