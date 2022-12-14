# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  validates :username, presence: true

  has_many :artworks,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :Artwork,
    dependent: :destroy

  has_many :shared_artworks,
           primary_key: :id,
           foreign_key: :viewer_id,
           class_name: :ArtworkShare,
           dependent: :destroy

  has_many :artworks_shared,
           through: :shared_artworks,
           source: :artwork
end
