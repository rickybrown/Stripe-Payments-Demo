class PricetagsController < ApplicationController
  before_action :set_pricetag, only: [:edit, :update, :destroy]
  #before_filter :authenicate_lord!
  
  def index
    @pricetags = Pricetag.all
  end
  def new
    @pricetag = Pricetag.new
  end
  def edit
  end
  def create
    @pricetag = Pricetag.new(pricetag_params)
    respond_to do |format| 
      if @pricetag.save
        format.html { redirect_to pricetags_url }
      else
        format.html { render action: 'new' }
      end
    end
  end
  def update
    respond_to do |format| 
      if @pricetag.update(pricetag_params)
        format.html { redirect_to pricetags_url }
      else
        format.html { redirect_to pricetags_url }
      end
    end
  end
  def destroy
    @pricetag.destroy
    respond_to do |format| 
      if @pricetag.save
        format.html { redirect_to pricetags_url }
      else
        format.html { redirect_to pricetags_url }
      end
    end
  end
  private
    def set_pricetag
      @pricetag = Pricetag.find(params[:id])
    end
    def pricetag_params
      params.require(:pricetag).permit(:amount, :description)
    end
    
end