class ItemsController < ApplicationController
  before_action :move_to_user_registration, except: [:index, :new]
  def index
    @items = Item.order("created_at DESC")
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.day = Time.current
    if @item.save
    redirect_to '/'
    else
    render :new, status: :unprocessable_entity
    end
  end
  
  private 
  def item_params 
    params.require(:item).permit(:item_name, :category_id, :money).merge(user_id: current_user.id)    
  end

  def move_to_user_registration
    unless user_signed_in?
      redirect_to new_user_registration_path
    end
  end

end