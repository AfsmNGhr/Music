class Song < ActiveRecord::Base
belongs_to :playlists
validates :name, :author, presence: true, length: { in: 1..10 }
end                        
