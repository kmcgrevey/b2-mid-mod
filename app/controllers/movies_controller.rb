class MoviesController < ApplicationController

  def create
    movie = Movie.create(movie_params)
  end

  private

  def movie_params
    params.permit(:title)
  end

end
