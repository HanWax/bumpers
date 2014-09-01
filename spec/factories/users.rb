FactoryGirl.define do 
	factory :user do 
		email 'bump@example.com'
		username 'bumpitybump'
		password '12345678'
		password_confirmation '12345678'
	end
end 