# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  img_url    :string           not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
  validates :title, uniqueness: { scope: :artist_id, message: "artist should not have multiple works of the same name" }

    belongs_to :artist,
      primary_key: :id,
      foreign_key: :artist_id,
      class_name: :User

    has_many :shares,
      primary_key: :id,
      foreign_key: :artwork_id,
      class_name: :ArtworkShare

end
