  class UsersController < ApplicationController
   def show
    @user=User.find(params[:id])
   end
   def edit
    @user=User.find(params[:id])
   end
   def update
    current_user.update(update_params)
    redirect_to :root and return
   end

  private
  def update_params
    params.require(:user).permit(:name, :email, :member, :profile, :works, :avatar)
  end
  end





