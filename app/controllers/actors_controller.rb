class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render({ :template => "actors_templates/index" })
  end

  def show
    @actor = Actor.find(params[:the_id])
    render({ :template => "actors_templates/show" })
  end
end
