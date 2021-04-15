class FlightFinder
    def initialize(params)
        @origin = Airport.find(params[:from_airport_id])
        @destination = Airport.find(params[:to_airport_id])
        @date = params[:start]
    end

    def find_flights
        flights = Flight.where(from_airport_id: @origin, to_airport_id: @destination, start: @date)

        if flights
            flights
        else
            'No flights found'
        end
    end
end