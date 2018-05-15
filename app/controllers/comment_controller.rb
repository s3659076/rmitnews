class CommentController < ApplicationController
	def new()
		if (!session[:user_id])
			redirect_to root_path
		end
		Comment.create(:content=>params[:comment_content], :post_id=>params[:post_id], :user_id=>params[:user_id])
		redirect_to params[:redirect_url]
	end
end
