class UserController < ApplicationController
	 def create()
	  	User.create(:username=>params['username'], :password=>params['password'])
	  	redirect_to '/login?created_success=true'

	  end
end
