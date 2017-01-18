class UsersController < ApplicationController
	def show
	end
	def create 
		puts params
		newUser = User.new(username: params[:username], email: params[:email], password: params[:password])
		puts newUser.valid?
		puts newUser.errors
		redirect_to "/"
	end
end
