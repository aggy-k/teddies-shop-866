class OrdersController < ApplicationController

  def index
    @orders = Order.order(:created_at => :desc)
  end

  def create
    @teddy = Teddy.find(params[:teddy_id])
    order  = Order.create!(teddy_sku: @teddy.sku, amount: @teddy.price, state: 'pending')

    redirect_to order_payment_path(order)
  end
end
