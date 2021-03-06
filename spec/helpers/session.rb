
def sign_up(email: 'joe@joe.com',
            name: 'Joe Chin',
            username: 'joechintheking',
            password: '1234',
            password_confirmation: '1234')
	visit '/users/new'
	fill_in :email, with: email
	fill_in :name, with: name
	fill_in :username, with: username
	fill_in :password, with: password
    fill_in :password_confirmation, with: password_confirmation
	click_button('Sign Up')
end

def sign_in
	visit '/session/new'
	fill_in('email', with: 'joe@joe.com')
	fill_in('password', with: '1234')
	click_button('Sign In')
end

def sign_out
	click_button('sign out')
end

def sign_in_and_out
	sign_in
	sign_out
end

def create_listing
    visit '/listings/new'
    fill_in 'title', with: 'Cupboard underneath the stairs'
    fill_in 'description', with: 'Suitable for one small nephew'
    fill_in 'price', with: 666
end

def create_listing2
    visit '/listings/new'
    fill_in 'title', with: 'Title1'
    fill_in 'description', with: 'Description1'
    fill_in 'price', with: 123
    click_button 'Submit'
end

def create_listing3
    visit '/listings/new'
    fill_in 'title', with: 'Title2'
    fill_in 'description', with: 'Description2'
    fill_in 'price', with: 666
    click_button 'Submit'
end

def search_available
	fill_in 'check_in_date', with: '10/10/2016'
	fill_in 'check_out_date', with: '20/10/2016'
	click_button 'Search'
end

def make_booking
	fill_in 'check_in_date', with: '10/10/2016'
	fill_in 'check_out_date', with: '20/10/2016'
	click_button 'Request'
end
