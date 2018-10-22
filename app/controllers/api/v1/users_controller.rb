class Api::V1::UsersController < ApplicationController

  before_action :find_user, only: [:show]

  def show
    render json: @user, status: 200
  end

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def create
    render json: User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
