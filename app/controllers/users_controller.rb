class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book_new = Book.new
    @books = @user.books
    @book = Book.new
  end

  def index
    @users = User.all
    @book = Book.new
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user),
notice: "Update was successfully"
    else
      render :edit
    end
  end

 private

 def user_params

params.require(:user).permit(:name, :introduction, :profile_image)
 end
end
