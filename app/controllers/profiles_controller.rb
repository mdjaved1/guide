class ProfilesController < ApplicationController
    def new
      @profile = Profile.new
    end
    
    def create
      @profile = current_user.build_profile(profile_params)
      if @profile.save
        flash[:notice] = "Profile was saved."
        redirect_to user_profile_path(current_user)
      else
        flash.now[:alert] = "There was an error saving the profile. Please try again."
        render :new
      end
    end
   
    def show
     @profile = current_user.profile
    end
    
    def delete
      
    end
    
    def update
      
    end
    
    private
    
    def profile_params
      params.require(:profile).permit(:avatar, :name, :description, :tagline, :location)
    end
    
end
