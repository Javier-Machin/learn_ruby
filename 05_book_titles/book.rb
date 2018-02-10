class Book
	IGNORED_WORDS = ["on", "in", "at", "since", "for", "ago",
					 "before", "to", "past", "and" ,"of", "the" ,"a", "an"]

	attr_reader :title

	def title=(string)
		@title = titleize(string)
	end

	def titleize(string)
		i = 0
		titleized_string = ""
		string = string.split(" ")
		return string[0].capitalize if string.length == 1
		string.each do |str|
			if i == 0 || str.length >= 4 || i == string.length - 1 || !(IGNORED_WORDS.include?(str))
				titleized_string += str.capitalize + " "
			else
				titleized_string += str + " "
			end
			i += 1
		end
		titleized_string.strip
	end
	
end

