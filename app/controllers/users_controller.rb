class UsersController < ApplicationController
    def show
        
    end
    def new
        #shows form to create new user
    end
    def create
        #check if passwords match

        #create a new User
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to user_path
        else
            redirect_to signup_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
