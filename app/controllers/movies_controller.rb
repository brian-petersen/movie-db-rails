class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def order
    @movie = Movie.find(params[:id])
    # render layout: false
  end
end
