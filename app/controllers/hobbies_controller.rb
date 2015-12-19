class HobbiesController < ApplicationController

	def index
		@hobbies = Hobby.paginate(:page => params[:page], :per_page => 5)
		end
	end

	def new
		@hobby = Hobby.new
	end
