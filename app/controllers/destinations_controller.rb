class DestinationsController < ApplicationController
    def index
        @destinations = Destination.all
    end

    def show
        @destination = Destination.find(params[:id])
    end

    def new
        @destination = Destination.new
    end

    def create
        @destination = Destination.new(destination_params)
        @destination.save
        redirect_to @destination
    end

     private

    def destination_params
        params.require(:destination).permit(:name, :country)
    end
end
