class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user),
notice: "更新に成功しました。"
    else
      render :edit
    end
  end

 private

 def user_params

params.require(:user).permit(:name, :introduction, :profile_image)
 end
end
