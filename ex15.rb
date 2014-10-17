# parse the command line arguments
filename = ARGV.first

# open the file
txt = open(filename)

# print the file
puts "Here's your file #{filename}:"
print txt.read

txt.close

# get file name from use input
#print "Type the filename again: "
#file_again = $stdin.gets.chomp

#open the file
#txt_again = open(file_again)

# print the file
#print txt_again.read