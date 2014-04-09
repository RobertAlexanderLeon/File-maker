require "color_text"

puts "HEY EVERYBODY".green
puts "Hi Dr.Nick!".blue
puts "Today we're going to store your input for future use!".green
puts "Please enter your text input or just press enter to continue".purple

@input = gets.chomp

puts "Type:
'add' - to add input to file
'save' - to save input to file
'read' - to read the current file
'source' - view the source code in the terminal".red

command = gets.chomp

def read_file(named: name, using: -> (content) {content.read})
	using.call(File.open(named))
end

def write_to(file: name, write: -> (content) {content.write @input})
	write.call(File.open(master, "w"))
end

def add_to(document: name, add: -> (content) {content.write @input})
	add.call(File.open(document, "a"))
end


case command
     when "add" then add_to document: "Hello_from_ruby.txt" 
	 when "save" then write_to file: "Hello_from_ruby.txt"	
     when "read" then puts read_file named: "Hello_from_ruby.txt"
     when "source" then puts read_file named: "filemaker.rb" 
end

# file = File.open("Hello_from_ruby.text", "w")
#This creates a new file called 'string.txt'