class CustomersController < ApplicationController
  def index
    @customers = []

    customer = OpenStruct.new
    customer.id = 1
    customer.name = "John Smith"
    @customers << customer

    customer = OpenStruct.new
    customer.id = 2
    customer.name = "John Doe"
    @customers << customer

    customer = OpenStruct.new
    customer.id = 3
    customer.name = "Mary Smith"
    @customers << customer

    respond_to do |format|
      format.html
    end
  end

  def new
    logger.info "você pode checar aqui os ids que chegaram no new"
    logger.info params[:customer_ids]

    @ids = params[:customer_ids]

    respond_to do |format|
      format.html
    end
  end
end
