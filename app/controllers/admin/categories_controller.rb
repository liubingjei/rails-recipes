class Admin::CategoriesController < ApplicationController

  def edit
    @category = Category.find(params[:id])
  end
end
