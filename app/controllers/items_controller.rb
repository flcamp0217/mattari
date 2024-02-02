class ItemsController < ApplicationController
  
  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to '/'
  end
  
  private 
  def item_params 
    params.require(:item).permit(:item_name, :category_id, :user_id)    
  end  

end