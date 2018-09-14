class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:user][:name])
    if user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      return head(:forbidden)
    end
  end

  def destroy
    if current_user
      session.delete :user_id
    end

    redirect_to '/login'
  end

end
