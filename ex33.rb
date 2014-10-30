def while_loop(numbers, n, x)
        i = 0

#       while i < n
        (1..6).each do |i|
                puts "At the top i is #{i}"
                numbers.push(i)

        #       i += x
                puts "Numbers now: ", numbers
                puts "At the bottom i is #{i}"
        end

        return numbers
end

numbers = []
n = 5
x = 2 

puts "The numbers: "

# remember you can write this 2 other ways?
while_loop(numbers, n, x).each {|num| puts num}
