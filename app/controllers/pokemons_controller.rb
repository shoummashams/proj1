class PokemonController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_user
		@pokemon.save
		redirect_to "home#index"
	end
end