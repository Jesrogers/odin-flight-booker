class PassengerMailer < ApplicationMailer
    default from: 'notifications@flightbooker.com'

    def confirmation_email
        @booking = params[:booking]
        mail(to: @booking.passengers.pluck(:email), subject: 'Booking confirmation')
    end
end
