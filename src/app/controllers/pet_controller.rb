class PetController < ApplicationController
  def index

  end

  def new

  end

  def show
    @pet_id = params[:id]
  end
end