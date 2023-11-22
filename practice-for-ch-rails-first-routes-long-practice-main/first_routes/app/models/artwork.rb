class Artwork < ApplicationRecord
    validates :title, presence: true, uniqueness: {scope: :artist_id}
    validates :image_url, presence: true

    belongs_to :artist, class_name: 'User', foreign_key: :artist_id
  end