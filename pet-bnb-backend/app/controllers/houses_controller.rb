class HousesController < ApplicationController

  def index 
    @houses = House.all 
    render json: @houses, except: [:created_at, :updated_at]
  end

  def create
    @house= House.create(house_params)
    @house.save

    render json: @house, except: [:created_at, :updated_at]
  end


  def show
    house = House.find(params[:id])
    render json: house
  end


  private
  def house_params
    params.require(:city).permit(:name, :address, :pets)
  end

end
