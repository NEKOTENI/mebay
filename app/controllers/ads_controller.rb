class AdsController < ApplicationController
	def new
		@ad = Ad.new
	end

	def create
		@ad = Ad.new(ad_params)
		@ad.save
		redirect_to "/ads/#{@ad.id}"
	end

	def show
		@ad = Ad.find(params[:id])
	end

	def index
		@ads = Ad.all
	end

	def edit
		@ad = Ad.find(params[:id])
	end

	def update
		@ad = Ad.find(ad_params)
		@ad.update_attributes(params[:ad])
		redirect_to "/ads/#{@ad.id}"
	end

	private
	def ad_params
		params.require(:ad).permit(:name, :description, :price, :seller_id, :email, :img_url)
	end
end