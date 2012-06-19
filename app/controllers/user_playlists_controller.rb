class UserPlaylistsController < ApplicationController
  # GET /user_playlists
  # GET /user_playlists.json
  def index
    @user_playlists = UserPlaylist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_playlists }
    end
  end

  # GET /user_playlists/1
  # GET /user_playlists/1.json
  def show
    @user_playlist = UserPlaylist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_playlist }
    end
  end

  # GET /user_playlists/new
  # GET /user_playlists/new.json
  def new
    @user_playlist = UserPlaylist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_playlist }
    end
  end

  # GET /user_playlists/1/edit
  def edit
    @user_playlist = UserPlaylist.find(params[:id])
  end

  # POST /user_playlists
  # POST /user_playlists.json
  def create
    @user_playlist = UserPlaylist.new(params[:user_playlist])
   respond_to do |format|
      if @user_playlist.save
        format.html { redirect_to :back, notice: 'Playlist added to user\'s profile' }
        #format.json { render json: @user_playlist, status: :created, location: @user_playlist }
      else
        format.html { render action: "new" }
        format.json { render json: @user_playlist.errors, status: :unprocessable_entity }
     end
    end
  end

  # PUT /user_playlists/1
  # PUT /user_playlists/1.json
  def update
    @user_playlist = UserPlaylist.find(params[:id])

    respond_to do |format|
      if @user_playlist.update_attributes(params[:user_playlist])
        format.html { redirect_to @user_playlist, notice: 'User playlist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_playlists/1
  # DELETE /user_playlists/1.json
  def destroy
    @user_playlist = UserPlaylist.find(params[:id])
  #  @user_playlist = UserPlaylist.where(:user_id => params[:user_id], :playlist_id => params[:playlist_id])
    @user_playlist.destroy

   respond_to do |format|
      format.html { redirect_to :back, notice: 'Playlist removed from user\'s profile' }
   
   #   format.json { head :no_content }
   end
  end

 #def destroy2
 #   @user_playlist = UserPlaylist.where(:user_id => params[:user_id], :playlist_id => params[:playlist_id])
 #   @user_playlist.destroy
 # end
end
