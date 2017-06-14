class ProductsController < ApplicationController
layout false
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to products_path
    else
      render new_product_path
    end
  end


  def edit
    @product = Product.find(params[:id])

  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path
    else
      render new_product_path
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end


end
