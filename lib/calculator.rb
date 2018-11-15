require 'time'

class Calculator
	def check_birthday (day, month)
		current_date = Time.now
	  year = Time.now.year
	  
	  if DateTime.parse("#{day}-#{month}-#{year}").month < current_date.month && 
	  	DateTime.parse("#{day}-#{month}-#{year}").day < current_date.day
	    year += 1
	  else
	    year
	  end

		if day == current_date.day && month == current_date.strftime("%B")
			true
		else
			next_birthday = DateTime.parse("#{day}#{month}#{year}")
			(next_birthday - Date.today).to_i.abs
		end
	end		
end