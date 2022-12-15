class ArtworksController < ApplicationController
  def index
    user = params[:user_id]
    if user
      render json: Artwork.where("artworks.artist_id = #{user}") 
      
      #User.select("*").join(:artworks_shared)
      #joins(:shared_viewers).
      #joins(:shared_viewers).
      #OR users.id = #{user}



      #where(artist_id: user).or(Artwork.joins(:shared_viewers).where(shared_viewers: {user_id: user}))
    else
      render json: Artwork.all
    end
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork, status: :created
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy 
    artwork = Artwork.find_by(id: params[:id])
    if artwork.destroy
      render json: artwork
    else
      render json: "Can't destroy this artwork! Its too beautiful!"
    end
  end
  def update
    artwork = Artwork.find_by(id: params[:id])
    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    artwork = Artwork.find_by(id: params[:id])
    render json: artwork
  end

  private

  def artwork_params
    debugger
    params.require(:artworks).permit(:title, :img_url, :artist_id)
  end
end
