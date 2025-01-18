class CarsController < ApplicationController
  def index
    @cars = Car.all
    @cars = Car.includes(:reviews)
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
    @reviews = @car.reviews
  end
end
