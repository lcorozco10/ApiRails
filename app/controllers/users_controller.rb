class UsersController < ApplicationController

  #Get Users all
  def index
    @user = User.all
  end

  #Get an user by id
  def show
    @user = User.find(params[:id])
  end

  #Create new user
  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end

  #Validation Field User
  private
  def user_params
    params.require(:user).permit(:username, :password, :roll)
  end

end
