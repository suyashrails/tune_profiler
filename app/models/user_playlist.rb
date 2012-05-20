class UserPlaylist < ActiveRecord::Base
  attr_accessible :playlist_id, :user_id
end
