print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_f

smaller = (number / 100).round(2)
puts "A smaller number is #{smaller}."

print "How much money? "
money = gets.chomp.to_f
percent = (money * 0.1).round(2)
puts "10% are #{percent}."