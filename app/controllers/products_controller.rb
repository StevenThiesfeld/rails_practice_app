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
    @product = Product.new(params[:product])
    if @product.save
      redirect_to "/products/show/#{@product.id}"
    else
      render "new"
    end
  end
  
  def edit
    @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to "/products/show/#{params[:id]}"
    else
      render "edit"
    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products"
  end
  
end
