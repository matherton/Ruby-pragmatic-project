#This controller tells ruby to display all products from the database
class StoreController < ApplicationController
  def index
    @products = Product.all
  end

end
