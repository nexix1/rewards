class RewardsController < ApplicationController
	def index
		if params[:search]	
			@rewards = Reward.where(purchase: params[:search]).where('bDate < ? AND eDate > ?', Time.now, Time.now )
			puts @rewards
		end
	end	
end
