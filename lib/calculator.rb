require 'time'

class Calculator
	def check_birthday (day, month)
		current_date = Time.now
		if day == current_date.day && month == current_date.strftime("%B")
			true
		else
			false
		end
	end
end