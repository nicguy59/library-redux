class ItemsController < ApplicationController
   def index
    @items = Item.order('name ASC') #name sorted 'Ascending'
  end

  def show
    @items = Item.find(params[:id])
  end
end
