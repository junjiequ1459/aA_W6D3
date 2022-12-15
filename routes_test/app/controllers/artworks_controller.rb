class ArtworksController < ApplicationController
  def index
    render json: Artwork.all
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork,
             status: :created
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destory 
    
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :img_url, :artist_id)
  end
end
