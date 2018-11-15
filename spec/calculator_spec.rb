require './lib/calculator'

describe 'Calculator' do
	describe '#check_birthday' do
		it "should be true if the date passed in is same as date today" do
			cal = Calculator.new
			test_date = Time.now
			day = test_date.day
			month = test_date.strftime("%B")
			expect(cal.check_birthday(day, month)).to eq(true)
		end

		it "Should return the number of days until next birthday" do
			cal = Calculator.new
			test_date = Time.now
			day = test_date.day + 5
			month = test_date.strftime("%B")
			expect(cal.check_birthday(day, month)).to eq(5)
		end
	end
end