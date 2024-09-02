class UsersController < ApplicationController
  def top
  end

  def account
    @user = current_user
  end

  def profile
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:user_image, :user_name, :user_introduction ))
      flash[:notice] = "プロフィール情報が変更されました。"
    else
      render "edit"
    end
  end
end
