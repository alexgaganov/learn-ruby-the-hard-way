def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket.\n"
end

def tasty_test(var1, seq)
	puts "##{seq}: testing #{var1}"
end


puts "We can just give the function numbers directly:"
cheese_and_crackers(20,30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

tasty_test(10, 1)
tasty_test(var=10, 2)
var=22
tasty_test(var, 3)
tasty_test($stdin.gets.chomp, 4)
var = $stdin.gets.chomp
tasty_test(var, 5)
tasty_test(open("ex19_test.txt").read, 6)
var = ARGV.first
tasty_test(var, 7)