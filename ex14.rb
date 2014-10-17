first_name, last_name = ARGV
prompt = ">"

puts "Hi #{first_name} #{last_name}."
puts "I'd like to ask you a few questions."
print "Do you like me #{first_name}? " + prompt
likes = $stdin.gets.chomp

print "Where do you live #{first_name}? " + prompt
lives = $stdin.gets.chomp

print "What kind of computer do you have? " + prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""