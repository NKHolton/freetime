class HobbiesController < ApplicationController

	def index
		@hobbies = Hobby.paginate(:page => params[:page], :per_page => 5)
		end
	end

	def new
		@hobby = Hobby.new
	end

	def create
		Hobby.create(hobby_params)
		redirect_to root_path
	end

	private

	def place_params
		params.require(:hobby).permit(:hobby, :description, :author)
	end
