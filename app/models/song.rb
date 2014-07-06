class Song < ActiveRecord::Base
belongs_to :playlists
validates :name, :author, presence: true
end
