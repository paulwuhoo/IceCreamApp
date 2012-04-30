class FlavorsController < ApplicationController

  def index
  @flavors = Flavor.all
  end
  
  def show
  @flavor = Flavor.find_by_id(params[:id])
  end
  
  def new
  end
  
  def create
  Flavor.create(:name => params[:name], :price => params[:price])
  redirect_to "http://localhost:3000/flavors"  
  end
  
  def update
    @flavor = Flavor.find_by_id(params[:id])
    @flavor.name = params["name"]
    @flavor.price = params["price"]
    @flavor.save
    redirect_to "http://localhost:3000/flavors"
  end
  
  def edit
    @flavor = Flavor.find_by_id(params[:id])
  end
  
  def destroy
    @flavor = Flavor.find_by_id(params[:id])
    @flavor.destroy
    redirect_to "http://localhost:3000/flavors"
  end
  
end
