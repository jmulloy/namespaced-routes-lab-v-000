class Admin::PreferencesController < ApplicationController
    def index
        @preference = Preference.new
      end
    
      def create
         @preference = Preference.new
         if @preference.save
          redirect_to preference
        else
        end
      end
    
      def edit
      end
    
      def update
      end
    
      def destroy
      end
    
      private 
    
      def preferences_params
        params.require(:preference).permit(:song_order, :artist_order, :song_create_permission)
      end
end