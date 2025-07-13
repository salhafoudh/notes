class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update ,:destroy]
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    
    if @item.save
      redirect_to items_url
    else
      render 'new', status: :unprocessable_entity
    end
  end
  def show
  
  end

  def edit
   
  end

  def update
  
   if @item.update(item_params)
    redirect_to @item
   else
    render 'edit', status: :unprocessable_entity
   end
  end

  def destroy
   
    @item.delete

    redirect_to items_url
  end

  private
  def item_params
    params.required(:item).permit(:name, :expected_cost, :is_done)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end