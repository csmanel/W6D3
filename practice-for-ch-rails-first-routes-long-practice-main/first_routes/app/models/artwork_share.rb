class ArtworkShare < ApplicationRecord
  validates :viewer_id, uniqueness: { scope: :artwork_id }
  validates :favorite, inclusion: { in: [true, false] }

  belongs_to :artwork, inverse_of: :artwork_shares
  belongs_to :viewer, class_name: 'User', inverse_of: :artwork_shares

end