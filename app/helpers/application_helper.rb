module ApplicationHelper

  def login()
    
    if request.request_method != "POST"
      return
    end
    username = params['username']
    password = params['password']

  	user = User.find_by(username: username.downcase)
  	if user && password == user['password']

  		session[:user_id] = user['id']
  		
  	end
  end

  def title(text)
    content_for :title, text
  end


  
end
