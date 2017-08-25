class ProfilesController < ApplicationController
    def new
      @profile = Profile.new
    end
    
    def create
      @profile = Profile.new
      @profile.name = params[:profile][:name]  
      @profile.user_id = params[:profile][:user_id]
      if @profile.save
        flash[:notice] = "Profile was saved."
        redirect_to @profile
      else
        flash.now[:alert] = "There was an error saving the profile. Please try again."
        render :new
      end
    end
   
    def show
     @profile = Profile.find(params[:id])
    end
    
    def delete
      
    end
    
    def update
      
    end
end
