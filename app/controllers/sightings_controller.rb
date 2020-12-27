class SightingsController < ApplicationController
    def show
        sighting = Sighting.find_by(id: params[:id])
        if sighting
            render json: sighting.to_json(include: [:bird, :location], except: [:created_at, :updated_at])
        else
            render json: { message: 'Sighting not found'}
        end
    end
end
