class SongsController < ApplicationController
  before_action :set_playlist_id 
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
  end

  # GET /songs/new
  def new
    @song = Song.new 
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = @playlist.songs.create(song_params)
    redirect_to playlist_songs_path(@playlist)
  end

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
    @song = @playlist.songs.find(params[:id])
    @song.update
    redirect_to playlist_songs_path(@playlist)
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song = @playlist.songs.find(params[:id])
    @song.destroy
    redirect_to playlist_songs_path(@playlist)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end
    
    def set_playlist_id
      @playlist = Playlist.find(params[:playlist_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:name, :author)
    end
end