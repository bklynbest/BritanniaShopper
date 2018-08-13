class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  
  def index
    @categories = Category.all
    @products = Product.all.order("created_at desc")
  end
  
  def show
    @products = Product.where("category_id = ?", @product.id)
    @categories = Category.all
  end
  
  def new
    @catgories = Category.new
  end
  
  def create
    @category = Category.new(category_params)
    
    respond_to do |format|
      if @category.save(category_params)
        format.html { redirect_to categories_path, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html {render :new, notice: "Category failed to be created" }
        format.json { render json: @category.errors, status: :unprocessable_entity}
      end
    end
  end
  
  def electronics
  end
  
  def home
  end
  
  def update
    @category = Category.new(category_params)
    
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to categories_path, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html {render :edit, notice: "Category failed to be updated" }
        format.json { render json: @category.errors, status: :unprocessable_entity}
      end
    end
  end
  
  def destroy 
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_path, notice: "Category has been deleted" }
      format.json { head :no_content }
    end
  end
  
  
  private
  
  def set_category
    @category = Category.find(params[:id])
  end
  
  def category_params
    params.require(:category).permit(:title)
  end
  
end