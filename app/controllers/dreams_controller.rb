class DreamsController < ApplicationController
    def index
        @dreams = Dream.all
        render json: @dreams, include: :user
    end
    
    def show
        @dream = Dream.find(params[:id])
        render json: @dream, include: :user
    end


    
    def destroy
        dream = Dream.find(params[:id])
        dream.destroy
        render json: "your party has been deleted"
    end

    def create
        @dream = Dream.new(user_params)
        @dream.save
    
        render json: @dream
        # redirect_to "http://localhost:3000/dreams"
    end

    def user_params
        params.require(:dream).permit([:date, :description, :mood, :user_id])
    end

    
end
