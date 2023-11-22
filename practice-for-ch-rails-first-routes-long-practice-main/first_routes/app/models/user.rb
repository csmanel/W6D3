class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true

  has_many :artworks, class_name: 'Artwork', foreign_key: :artist_id
end
