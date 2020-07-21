class PokemonsController < ApplicationController

    def index
        pokemons = Pokemon.all
        render json: pokemons
    end

    def destroy
        # byebug
        pokemon = Pokemon.find(params[:id])
        pokemon.destroy
        render json: {message: "successfully deleted"}
    end

    private

    def pokemon_params
        # pokemon.require()
    end

end
