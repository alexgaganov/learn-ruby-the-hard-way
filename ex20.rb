# parse the arguments from command line
input_file = ARGV.first

# function that prints the whole file
def print_all(f)
	puts f.read
end

# functions that goes back to the first line of the file
def rewind(f)
	f.seek(0)
end

# prints a current line from the file
def print_a_line(line_count, f)
	puts "#{line_count}, #{f.gets.chomp}"
end

# opens file for reading
current_file = open(input_file)

puts "First let's print the whole file:\n"

# calls the print_all function
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

# calls the rewind function
rewind(current_file)

puts "Let's print three lines:"

# from now on the script goes line by line and prints them via function print_a_line
# if we use a rewind function after each print the print_a_line will always print the first line 
current_line = 1
print_a_line(current_line, current_file)
#rewind(current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)
#rewind(current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)
#rewind(current_file)

# closes the file
current_file.close
