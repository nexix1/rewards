class RewardsController < ApplicationController
	def enter
	end

	def show_data
		@cc = params[:name]
	end

end
