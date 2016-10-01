class Flash_samples_Controller < ApplicationController
  def create
    review = current_user.reviews.new(review_params)
    if review.save
     redirect_to books_url, success: "Successfully created your prototype."
    else
      flash[:warning] = "Unfortunately failed to create."
      render action: 'root_url'
    end
  end
end
