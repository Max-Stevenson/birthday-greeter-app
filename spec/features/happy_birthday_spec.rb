feature 'HappyBirthday' do
	scenario 'User is redirected to Happy Birthday page if it is their birthday' do
		visit('/')
		fill_in('user_name', with: 'Test')
		current_date = Time.new
		fill_in('day', with: "#{current_date.day}")
		page.select "#{current_date.strftime("%B")}", from: 'Month'
		click_on("submit")
		expect(page).to have_content("Happy Birthday!")
	end
end