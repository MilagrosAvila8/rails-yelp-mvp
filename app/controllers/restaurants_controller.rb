class RestaurantsController < ApplicationController

  def index
   @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(name: params[:restaurant][:name], address: params[:restaurant][:address], category: params[:restaurant][:category],phone_number: params[:restaurant][:phone_number] )
    @restaurant.save
    redirect_to restaurants_path
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
