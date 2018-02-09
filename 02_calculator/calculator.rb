def add(number1, number2)
	number1 + number2
end

def subtract(number1, number2)
	number1 - number2
end

def sum(array)
	total = 0
	array.each { |n| total += n }
	total
end

def multiply(*numbers)
	total = 1
	numbers.each { |number| total*= number }
	total
end

def power(number1, number2)
	number1 ** number2
end

def factorial(number)
	return 1 if number == 1 || number == 0
	total = number
	i = 1
	(number - 1).times do |n|
		total *= number - i
		i += 1
	end
	total
end

