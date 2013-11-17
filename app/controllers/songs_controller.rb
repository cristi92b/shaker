class SongsController < ApplicationController
	#layout: false, only: 'index'
	def index
		@songs = Song.all
	end
	def create 
		song_opts = create_params
		if(!(song_opts[:title].blank?  && song_opts[:artist].blank?))
			song = Song.create(create_params)
			redirect_to songs_path
		else
			redirect_to new_song_path			
		end
	end
	def new
		@song = Song.new
	end
	def update
	
	end
	def show
	
	end
	def edit
	
	end
	def destroy 
	
	end
	private
	def create_params
		params.require(:song).permit(:title,:artist)
	end
end
