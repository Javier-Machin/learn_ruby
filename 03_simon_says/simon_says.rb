def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, repeat_times=2)
	repeated_string = string
	(repeat_times-1).times do |str|
		repeated_string += " " + string
	end
	repeated_string
end

def start_of_word(string, length)
	string[0, length]
end

def first_word(string)
	string = string.split(" ")
	string[0]
end

def titleize(string)
	i = 0
	titleized_string = ""
	string = string.split(" ")
	return string[0].capitalize if string.length == 1
	string.each do |str|
		if i == 0 || str.length > 4 || i == string.length - 1
			titleized_string += str.capitalize + " "
		else
			titleized_string += str + " "
		end
		i += 1
	end
	titleized_string.strip
end