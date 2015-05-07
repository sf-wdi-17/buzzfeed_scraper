class ArticlesController < ApplicationController
	def index
		if params[:q]
			@articles = Article.where(:title => params[:q])
		else 
			@articles = Article.all
		end
		render json: @articles
	end
end
