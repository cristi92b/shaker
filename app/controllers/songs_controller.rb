class SongsController < ApplicationController
	#layout: false, only: 'index'
	def index
		@songs = Song.all
	end
	def create 
		song = Song.create(params[:song])
		
		redirect_to songs_path
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
end
