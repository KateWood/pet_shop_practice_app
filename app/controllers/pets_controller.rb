class PetsController < ApplicationController
	def index
		@pets = Pet.all
	end

	def show
		@pet = Pet.find(params[:id])
	end

	def new
		@pet = Pet.new
	end

	def create
		@pet = Pet.new(pet_params)
		if @pet.save
			redirect_to pet_path(@pet)
		else
			render :new
		end
	end

	def edit

	end

	def update

	end

	def destroy

	end

private

	def pet_params
		params.require(:pet).permit(:name, :age, :species, :available, :height, :user_id)
	end

end
