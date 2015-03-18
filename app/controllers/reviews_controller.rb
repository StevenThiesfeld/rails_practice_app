class ReviewsController < ApplicationController
 

  # GET /reviews/new
  # GET /reviews/new.json
  def new
    @review = Review.new
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(params[:review])
    if @review.save
      flash[:notice] = "Review Created"
      redirect_to "/products"
    else
      render "create"
    end
  end

  def upvote
    @review = Review.find(params[:id])
    @review.upvotes += 1
    @review.save
    respond_to do |format|
      format.js
    end
  end  
end
