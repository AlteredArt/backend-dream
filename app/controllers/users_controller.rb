class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users, include: :dreams
    end
    
    def show
        @user = User.find(params[:id])
        render json: @user, include: :dreams
    end
    
    def create
        @user = User.create(user_params)
        render_user
        redirect_to "http://localhost:3001"
    end

    def user_params
        params.require(:user).permit([:name, :username, :password])
    end
end
