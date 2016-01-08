class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def show
	end	
	
	def create
		@user = User.create(user_params)
		redirect_to user_path(@user)
	end	

	private
	def user_params
		params.require(:user).permit(:username)
	end

end	