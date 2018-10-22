class Api::V1::TripsController < ApplicationController

  def create
    render json: Trip.create(trip_params), status: 201
  end

  def destroy
    render json: Trip.find(params[:id]).destroy
  end

  private

  def trip_params
    params.require(:trip).permit(:destination, :origin, :name, :user_id)
  end

end
