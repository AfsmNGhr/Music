class Playlist < ActiveRecord::Base
has_many :songs, dependent: :destroy
validates :name, length: { in: 6..20 }
end
