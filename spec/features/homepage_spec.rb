feature 'Homepage' do
	scenario 'User visits Homepage' do
		visit('/')
		expect(page).to have_content('Home Page')
	end
end