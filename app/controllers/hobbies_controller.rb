class HobbiesController < ApplicationController

	def index
		@hobbies = Hobby.paginate(:page => params[:page], :per_page => 5)
	end

	def new
		@hobby = Hobby.new
	end

	def create
		@hobby = Hobby.create(hobby_params)
		redirect_to root_path
	end

	private

	def hobby_params
		params.require(:hobby).permit(:hobby_name, :description, :author)
	end
end
