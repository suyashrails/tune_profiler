class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def show
    
   # @user_role = UsersRoles.where(:user_id => @user.id)
     
    @user = User.find(params[:id])

    @user_playlists = UserPlaylist.where(:user_id => @user.id) 
   
    @playlists = Playlist.all
     respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_playlists}

    end
   end
 # def subscribe(@sel_playlist)
  #   @usr_pl = UserPlaylist.new
   #  @user = User.find (params[:id])
    # UserPlaylist.add(@user.id, @sel_playlist)
#  end

end
