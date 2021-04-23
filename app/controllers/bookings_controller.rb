class BookingsController < ApplicationController
    include BookingsHelper

    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight])
        passenger_count = params[:passenger_count].to_i
        passenger_count.times { @booking.passengers.build }
    end

    def create
        @booking = Booking.new(booking_params)

        if @booking.save
            flash[:notice] = 'Booking created!'
            redirect_to booking_path(@booking)
        else
            flash[:alert] = 'Error creating booking'
            render :new
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end
end
