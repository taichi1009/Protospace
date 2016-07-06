class ProductsController < ApplicationController
  def index
      @products = Product.includes(:user).page(params[:page]).per(8).order("created_at DESC")
  end

  def show
    @product = Product.find(params[:id])
    @comments = @product.comments.includes(:user)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
