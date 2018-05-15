class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(username: params[:username].downcase)
    if user && user[:password] == params[:password]
    	session[:user_id] = user.id
    	redirect_to root_path
    else
    	redirect_to '/login?login_success=false'

    end

  end

  def destroy
  	session[:user_id] = nil
  	redirect_to '/login'
  end
end
