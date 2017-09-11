class AnimalsController < ApplicationController
  def index
    @animals = Animal.all.order(name: :asc)
  end

  def new
  end

  def create
    # TODO: Adjust the logic to send an error message if submission is invalid.

    @animal = Animal.new(name: params[:animalName]) # Create isntance ofAnimal model

    if @animal.save
      render json: {
        message: "Animal created!"
      }, status: 200
    else
      render json: {
        message: "Name is already taken!"
      }, status: 400
    end
  end
end
