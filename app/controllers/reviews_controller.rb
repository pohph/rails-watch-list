class ReviewsController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @review = List.new

  end

  def create
    @review = Review.new(review_params)
    @list = List.find(params[:list_id])
    @review.list = @list
    @review.save
    redirect_to show_path
  end

  def review_params
    params.require(:review).permit(:comment, :rating, :list_id)
  end
end
