class WelcomeController < ApplicationController
  def index
  end
  
private 
	def user_redirect_welcome
		if current_user
			redirect_to "/expenses"
		end
	end
end
