class BirdsController < ApplicationController

    def index
        @birds = Bird.all
        render json: @birds, include: [:tree], status: :ok
    end

    def show
        @bird = Bird.find(params[:id])
        render json: @bird, include: [:tree], status: :ok
    end

    def create
        @bird = Bird.create(
            name: params[:name],
            species: params[:species],
            tree_id: params[:tree_id]
        )
        render json: @bird, status: :created
    end

end
