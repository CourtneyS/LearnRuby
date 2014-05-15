from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?

input = File.open(from_file)
indate = input.read()

puts "This inout file is #{indate.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, "w")
output.write(indate)

puts "Alright, all done."

output.close()
input.close()