class FlightsController < ApplicationController
    def index
        if (params.has_key?(:from_airport) && params.has_key?(:to_airport) && params.has_key?(:passengers) && params.has_key?(:departure_date))
            @available_flights = Flight.where(from_airport_id: params[:from_airport], to_airport_id: params[:to_airport], start: params[:departure_date]).distinct
            puts "Available Flights: #{@available_flights.first.id}"
        end
    end
end
