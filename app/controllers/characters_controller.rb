class CharactersController < ApplicationController
    def index
        @characters = Character.all

        render json: @characters
    end

    def show 
        @characters = Character.find(params[:id])

        render json: @characters
    end
end
