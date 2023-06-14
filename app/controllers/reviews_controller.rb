class ReviewsController < ApplicationController
  # def new
  #   @review = Review.new
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  # end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant = @review.restaurant
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
