class BirdsController < ApplicationController
    def index
        @birds = Bird.all
        render json: @birds
    end

    def show
        @bird = Bird.find(params[:id])
        render json: @bird
    end

    def create
        @bird = Bird.create({name: params[:name], color: params[:color]})
        render json: @bird
    end
end
