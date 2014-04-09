require "color_text"
puts "HEY EVERYBODY".purple
puts "Hi Dr.Nick!".green
puts "Today we're going to store your input for future use!".purple
puts "Please press enter to continue".neon

input = gets.chomp

puts "Type:
'save' - to save input to file
'read' - to read the current file
'source' - view the source code in the terminal"
command = gets.chomp

def read_file(named: name, using: -> (content) {content.read})
	using.call(File.open(named))
end

case command
	 when "save" then File.open("Hello_from_ruby.text", "w"){ |content| content.write input}
     when "read" then puts read_file("Hello_from_ruby.text")
     when "source" then puts read_file(named: "filemaker.rb", using: -> (content) {content.read})
end

# file = File.open("Hello_from_ruby.text", "w")
#This creates a new file called 'string.txt'