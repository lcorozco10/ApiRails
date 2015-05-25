class UsersController < ApplicationController

  layout  'userlayouts'


  #Get Users all
  def index
    @user = User.all
  end

  #Get an user by id
  def show
    @user = User.find(params[:id])
  end

  #Form User
  def new
    @user = User.new
  end

  #Create new User
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  #Form user edit
  def edit
    @user = User.find(params[:id])
  end

  #Update user
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  #Delete user
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  #Validation Field User
  private
  def user_params
    params.require(:user).permit(:username, :password, :roll)
  end

end
