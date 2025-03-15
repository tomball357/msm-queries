class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render({ :template => "directors_templates/index" })
  end

  def youngest
    @youngest_director = Director.order(:dob).last
    render({ :template => "directors_templates/youngest" })
  end

  def eldest
    @eldest_director = Director.order(:dob).first
    render({ :template => "directors_templates/eldest" })
  end

  def show
    @director = Director.find(params[:the_id])
    render({ :template => "directors_templates/show" })
  end
end
