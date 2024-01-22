class Api::V1::GreetingsController < ApplicationController
    def index
        @random_greeting = Greeting.order('RANDOM()').first

        if @random_greeting
          render json: { greeting: @random_greeting.greeting }
        else
          render json: { greeting: 'No greetings found' }
        end
    end
end
