class UiController < ApplicationController
	def index 
		redirect_to "/client/index.html", :status=>:found
		
	end
end
