class ApiController < ApplicationController
	require 'time'
	def dumb_data()
		if params[:item] == "comment"
			data = Comment.where(id: params[:id]).take
		end
		if params[:item] == "article"
			data = Article.where(id: params[:id]).take
		end
		if data == nil
			render plain: 'item not found'
			return
		end
		
		data = data.as_json

		render plain: data
	end

	def create_item()
		if params['type'] == 'news'
			Article.create(:title=>params[:text], :content=>params[:content], :user_id=>params[:user_id])
		else
			Comment.create(:content=>params[:content], :user_id=>params[:user_id], :post_id=>params[:post_id])
		end
	end
end
