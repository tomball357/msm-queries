class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render({ :template => "movies_templates/index" })
  end

  def show
    @movie = Movie.find(params[:the_id])
    render({ :template => "movies_templates/show" })
  end
end
