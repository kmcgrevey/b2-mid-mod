class StudiosController < ApplicationController
  def create
    studio = Studio.create(studio_params)
  end

  private

  def studio_params
    params.permit(:name)
  end

end
