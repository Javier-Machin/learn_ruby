class Timer
	attr_reader :seconds

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end

	def seconds=(num)
		@seconds = num
	end

	def time_string
		if @seconds > 60
			@minutes = @seconds / 60
			@seconds = @seconds % 60
			if @minutes > 60
				@hours = @minutes / 60
				@minutes = @minutes % 60
			end
		end

		seconds_string = @seconds.to_s
		minutes_string = @minutes.to_s
		hours_string = @hours.to_s

		seconds_string = "0" + seconds_string if seconds_string.length == 1
		minutes_string = "0" + minutes_string if minutes_string.length == 1
		hours_string = "0" + hours_string if hours_string.length == 1

		return hours_string + ":" + minutes_string + ":" + seconds_string
	end

end
