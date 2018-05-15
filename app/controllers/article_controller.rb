class ArticleController < ApplicationController
	def create
		if (!session[:user_id])
			redirect_to root_path
		end
		Article.create(:title=>params['post-title'], :content=>params['post-content'], :user_id=>session[:user_id])
		redirect_to root_path
	end


end
