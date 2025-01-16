class FavouritesController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    if Favourite.exists?(car: @car)
      redirect_to car_path(@car)
    else
      Favourite.create!(car: @car)
      redirect_to car_path(@car)
    end
  end

  def index
    @favourites = Favourite.includes(:car).all
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path
  end
end
