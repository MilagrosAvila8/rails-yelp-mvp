class ReviewsController < ApplicationController

  # before_action :set_restaurant, only: %i[new create]
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    # @review.save
    @review.save
      redirect_to restaurant_path(@restaurant)

      # redirect_to new_restaurant_review_path(@restaurant)

  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
