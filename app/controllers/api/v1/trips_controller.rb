class Api::V1::TripsController < ApplicationController

  before_action :find_trip, only: [:show, :edit, :update, :destroy]

  def trips
    @trips = Trip.all
    render json: @trips, status: 200
  end

  def create
    render json: Trip.create(trip_params), status: 201
  end

  def destroy
    render json: @trip.destroy
  end

  def edit

  end

  def update
    @trip.update(trip_params)
    render json: @trip, status: 202
  end

  def show
    render json: @post, status: 200
  end

  private

  def trip_params
    params.require(:trip).permit(:destination, :origin, :name, :user_id)
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end

end
