class Playlist < ActiveRecord::Base
  attr_accessible :group, :name
  belongs_to :user
end
