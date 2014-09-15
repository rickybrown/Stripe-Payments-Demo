class ChargesController < ApplicationController

  def new
    @charge = Charge.new
  end

  def create
    @charge = Charge.new(charge_params)
    if @charge.amount == '0'
      redirect_to root_url, notice: 'You must enter a donation amount.'
    else
      customer = Stripe::Customer.create(
        card:         params[:stripeToken],
        email:        @charge.email, 
        description:  request.ip
      )
      charge = Stripe::Charge.create(
        customer:     customer.id,
        amount:       @charge.amount,
        description:  @charge.description,
        currency:     'usd'
      )
    end
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_url
  end
 
  def charge_params
    params.require(:charge).permit(:amount, :description, :email)
  end
  
end