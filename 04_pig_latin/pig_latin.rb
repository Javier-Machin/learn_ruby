def translate(string)
	final_string = ""
	string_word = string

	if string =~ /[ ]/ #string.include? " "
		string_word = string.split(" ")
	end

	if string_word.kind_of?(Array)
		final_string = [];
		string_word.each do |word|
			final_string << translate_word(word).to_s
		end
		final_string = final_string.join(" ")
		return final_string
	else 
		return final_string + translate_word(string_word).to_s
	end
end

def translate_word(string) 
	consonant_count = 0
	current_word = string
	string_to_append = ""
		
	i = 0
	while i < current_word.length
		if current_word[i] =~ /[^AEIOUaeiou]/ || (current_word[i].downcase == "u" && current_word[i-1].downcase == "q")
			string_to_append += current_word[i]
			consonant_count += 1
		else
			break
		end
		i += 1
	end

	string_to_append += "ay";


	if consonant_count > 0
		current_word = current_word[consonant_count...current_word.length] + string_to_append
	else
		current_word = current_word + string_to_append
	end

	current_word
end


