class VisitorsController < ApplicationController
  def index
    @products = Product.all
    if params[:sort]
    	@products = Product.alphabetical.to_a
    end

  end
end
