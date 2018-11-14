require 'sinatra'

class BirthdayGreeter < Sinatra::Base
	get '/' do
		'Home Page'
	end
end