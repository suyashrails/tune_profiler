class UserRolesController < ApplicationController

  def index
    @users_roles = UsersRoles.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_roles }
    end
  end

  # GET /playlists/1
  # GET /playlists/1.json
  def show
    @users_roles = UsersRoles.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_roles }
    end
  end

  # GET /playlists/new
  # GET /playlists/new.json
  def new
    @users_roles = UsersRoles.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_roles }
    end
  end

  # GET /playlists/1/edit
  def edit
    @users_roles = UsersRoles.find(params[:id])
  end

  # POST /playlists
  # POST /playlists.json
  def create
    @users_roles = UsersRoles.new(params[:user_roles])

    respond_to do |format|
      if @users_roles.save
        format.html { redirect_to @users_roles, notice: 'User-Role was successfully created.' }
        format.json { render json: @users_roles, status: :created, location: @users_roles }
      else
        format.html { render action: "new" }
        format.json { render json: @users_roles.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /playlists/1
  # PUT /playlists/1.json
  def update
    @users_roles = UsersRoles.find(params[:id])

    respond_to do |format|
      if @users_roles.update_attributes(params[:user_roles])
        format.html { redirect_to @users_roles, notice: 'User-Role was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_roles.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlists/1
  # DELETE /playlists/1.json
  def destroy
    @users_roles = UsersRoles.find(params[:id])
    @users_roles.destroy

    respond_to do |format|
      format.html { redirect_to users_roles_url }
      format.json { head :no_content }
    end
  end
end
