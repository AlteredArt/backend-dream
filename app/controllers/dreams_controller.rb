class DreamsController < ApplicationController
    def index
        @dreams = Dream.all
        render json: @dreams, include: :user
    end
    
    def show
        @dream = Dream.find(params[:id])
        render json: @dream, include: :user
    end

    def create
        @dream = Dream.create(user_params)
        # render_user
        redirect_to "http://localhost:3000/dreams"
    end

    def user_params
        params.require(:dream).permit([:date, :description, :mood, :user])
    end
    
end
