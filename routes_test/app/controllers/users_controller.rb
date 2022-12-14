class UsersController < ApplicationController
  def index
    user = User.all
    render json: user
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: user,
             status: :created
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def update
    user = User.find_by(id: params[:id])

    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find_by(id: params[:id])

    if user.destroy
      render json: user
    else
      render json: "Can't destroy this user! He is too powerful"
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :img_url, :artist_id)
  end
end
