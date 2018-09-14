class UsersController < ApplicationController

  def new
  end

  def create
    if params[:user][:password] == params[:user][:password_confirmation]
      user = User.create(username: params[:user][:name], password: params[:user][:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/users/new'
    end
  end

  def welcome
  end

end
