class FlightsController < ApplicationController
    require './app/services/flight_finder'

    def index
        @airports_options = Airport.all.map { |airport| [airport.code, airport.id] }
        @departure_date_options = Flight.all.distinct.order('start').map { |flight| [flight.start.strftime('%m/%d/%y'), flight.start ]}

        if (params.has_key?(:from_airport_id) && params.has_key?(:to_airport_id) && params.has_key?(:passenger_count) && params.has_key?(:start))
            @available_flights = FlightFinder.new(params).find_flights
        end
    end
end
