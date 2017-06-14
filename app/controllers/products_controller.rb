class ProductsController < ApplicationController

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
      flash[:notice] = "You have successfully create a new product."
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
      flash[:notice] = "You have successfully edit a product."
      redirect_to product_path
    else
      render new_product_path
    end
  end

  def destroy
    @product = Product.find(params[:id])
      @product.destroy
      flash[:notice] = "You have successfully delete a product."
      redirect_to products_path
  end

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end


end
