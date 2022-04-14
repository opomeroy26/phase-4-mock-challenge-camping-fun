class ActivitiesController < ApplicationController

    def index 
        activities = Activity.all 
        render json: activities, status: :ok 

    end

    def destroy 
        activity = Activity.find(params[:id])
        activity.destroy!
        head :no_content 
    end

end
