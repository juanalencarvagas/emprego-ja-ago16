class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(list_param)
    if @category.save
      redirect_to @category
    else
      render new
    end
  end


  private
  def list_param
    params.require(:category).permit(:name)
  end

end
