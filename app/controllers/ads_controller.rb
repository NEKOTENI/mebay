class AdsController < ApplicationController
	def index
		@ad = Ad.all
	end

	def show
		@ad = Ad.find(params[:id])
	end
end
