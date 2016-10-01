 class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
    end
    def edit
      @user = User.find(params[:id])
    end
    def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "ユーザー情報を更新しました"
      redirect_to root_path
    else
      flash[:warning] = "入力に誤りがあります"
      render :edit
    end
   end
   private
     def user_params
       params.require(:user)
             .permit(:name,
                     :email,
                     :member,
                     :profile,
                     :works,
                     :avatar)
     end
  end
