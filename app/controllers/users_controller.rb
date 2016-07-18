class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]
  def show
      # @nickname = current_user.nickname
    @products = @user.products.all
  end

  def edit
  end

  def update
  end

  private
  def update_params
  end

  def set_user
    @user = User.find(params[:id])
  end

end
