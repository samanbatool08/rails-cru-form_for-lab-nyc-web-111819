class SongsController < ApplicationController

    def show
        @song = Song.find(params[:id])

        render :show
    end

    def new
        @song = Song.new

        render :new
    end

    def create
        song = Song.create(song_params)

        redirect_to song_path(song)
    end

    def edit
        @song = Song.find(params[:id])
    
        render :edit
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params)

        redirect_to song_path(@song)
    end

    private

    def song_params
        params.require(:song).permit(:name, :genre_id, :artist_id)
    end

end
