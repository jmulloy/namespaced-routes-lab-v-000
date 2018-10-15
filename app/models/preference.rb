class Preference < ActiveRecord::Base
    default_scope { order(title: :desc) }
    default_scope { order(name: :asc) }


    def create
        @song = Song.new(song_params)
    
        if @song.save
          redirect_to @song
        else
          render :new
        end
      end
      
end
