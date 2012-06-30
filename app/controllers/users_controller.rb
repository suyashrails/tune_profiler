class UsersController < ApplicationController
  before_filter :authenticate_user!


  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def show
    
   # @user_role = UsersRoles.where(:user_id => @user.id)
     
   #if current_user.has_role? :admin
    @user = User.find(params[:id])
   #else
   # @user = User.find(current_user.slug) #params[:id])
   #end
    @user_playlists = UserPlaylist.where(:user_id => @user.id) 
   
    @playlists = Playlist.all
     respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_playlists}

    end

  def profile
     @user = User.find(current_user.slug) #params[:id])
     @id = @user.id
    #@id = current_user.name
    redirect_to user_path(:id => @id) 
  end

   end
 # def subscribe(@sel_playlist)
  #   @usr_pl = UserPlaylist.new
   #  @user = User.find (params[:id])
    # UserPlaylist.add(@user.id, @sel_playlist)
#  end

end
