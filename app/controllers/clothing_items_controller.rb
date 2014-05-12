class ClothingItemsController < ApplicationController
  def index
    @clothing_items = ClothingItem.all
  end

  def new

  end

  def create
    @clothing_item = ClothingItem.new
    @clothing_item.clothing_type = params[:clothing_item][:clothing_type]
    @clothing_item.clothing_material = params[:clothing_item][:clothing_material]
    @clothing_item.clothing_color = params[:clothing_item][:clothing_color]
    @clothing_item.save
    redirect_to '/clothing_items'
  end

  def show
    @clothing_item = ClothingItem.find(params[:id])
  end
end