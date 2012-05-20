class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_playlists = UserPlaylist.all
    @playlists = Playlist.all
     respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_playlists}

    end
   

  end

end
