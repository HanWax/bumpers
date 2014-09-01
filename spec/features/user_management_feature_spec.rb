require 'rails_helper'

describe 'user management' do 
	context 'when logged out' do 
		it 'should not be able to see bulletins without being signed in' do 
			visit '/'
			expect(page).to have_link('Sign in')
			expect(page).to have_link('Sign up')
			expect(page).not_to have_content('You missed Eddie yesterday')
		end
	end 

	context 'when logged in' do 

		before do
			hannah = create(:user)
			login_as hannah
		end 

		it 'should be able to sign out' do 
			visit '/'
			expect(page).to have_link('Sign out')
		end

		it 'should be able to see the bulletins of near misses' do 
			visit '/'
			expect(page).to have_content('You missed Eddie yesterday')
		end 
	end 
end 