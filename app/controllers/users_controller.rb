class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def index
    @articles = User.all
  end

  def create

    @user = User.new(user_params)

    @user.save
    redirect_to @user
  end
  private
  def user_params
    params.require(:user).permit(:username, :password, :roll)
  end
end
