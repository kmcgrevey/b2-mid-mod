class StudiosController < ApplicationController

  def index
    @studios = Studio.all
  end

  


  def create
    studio = Studio.create(studio_params)
  end

  private

  def studio_params
    params.permit(:name)
  end

end
