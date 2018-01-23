class UsersController < ApplicationController

  before_action :load_user , only: [:show,:update,:edit,:destroy]

  def index
    @users = User.all
  end

  def create
    @u = User.new(user_params)
    if @u.save
      redirect_to users_path
    else
      render "new"
    end
  end

  def new
    @u = User.new
  end

  def update
    @u.update_attributes(user_params)
    if @u.valid?
      redirect_to users_path
    else
      render "edit"
    end
  end

  def user_params
    params.require(:user).permit(:firstname,:lastname,:age)
  end

  def load_user
    @u = User.find(params[:id])
  end

  def destroy

      @u.destroy
      if @u.destroy
           redirect_to users_path, notice: "User deleted."
      end

  end
end
