class BirdsController < ApplicationController

    def index
        @birds = Bird.all
        render json: @birds, status: :ok
    end

    def show
        @bird = Bird.find(params[:id])
        render json: @bird, status: :ok
    end

    def create
        @bird = Bird.create(
            name: params[:name],
            species: params[:species]
        )
        render json: @bird, status: :created
    end

end
