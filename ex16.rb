filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "opening the file..."
target = File.open(filename, 'w')

puts 'Truncating the file.   Goodbye!'
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."
print "line1: "; line1= STDIN.gets.chomp()
print "line2: "; line2 = STDIN.gets.chomp()
print "line3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1 + "\n")
target.write(line2 + "\n")
target.write(line3 + "\n")

puts "And finally, we close it."
target.close()