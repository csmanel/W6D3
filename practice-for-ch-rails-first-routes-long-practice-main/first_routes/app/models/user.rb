class User < ApplicationRecord
 has_many :artworks, class_name: 'Artwork', foreign_key: :artist_id
end
