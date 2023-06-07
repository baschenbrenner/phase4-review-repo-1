class ReviewsController < ApplicationController
# before_action :authorize 

    def index
        if params[:product_id]
            product = Product.find(params[:product_id])
            reviews = product.reviews
            render json: reviews
        elsif params[:user_id]
            user = User.find(params[:user_id])
            reviews = user.reviews
            render json: reviews 
        else 
            reviews = Review.all 
            render json: reviews
        end
    end

    def show 
        review = Review.find(params[:id])
        render json: review
    end


    def create 
        review = current_user.reviews.create!(review_params)
        render json: review
    end

    def update
        review = current_user.reviews.find(params[:id])
        review.update!(review_params)
        render json: review
    end

    def destroy
        review = current_user.reviews.find(params[:id])
        review.destroy
        head :no_content
    end


    private

    def review_params
        params.permit(:title, :review, :rating, :user_id, :product_id)
    end

    def authorize 
        render json: { error: ["Must be logged in"] }, status: 401 unless session[:user_id]
    end

end
