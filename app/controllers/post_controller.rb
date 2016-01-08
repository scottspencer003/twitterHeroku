class PostsController < ApplicationController

	def index
		@posts = Post.all
	end	

def show

	@posts = Post.find(params[:id])

	# redirects to message if url does not lead anywhere
	rescue ActiveRecord::RecordNotFound
		flash[:error] = "Could not find the post"
		redirect_to posts_path
	end	
end


end