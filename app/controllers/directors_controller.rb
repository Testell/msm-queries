require 'date'

class DirectorsController < ApplicationController
  def get_directors
    render({ :template => "director_pages/list"})
  end

  def get_director
    the_id = params.fetch("the_id")

    matching_records = Director.where({ :id => the_id})

    @the_director = matching_records.at(0)
    @matching_movies = Movie.where({ :director_id => @the_director.id})

    render({ :template => "director_pages/details"})
  end

  def get_youngest_director
    @youngest_director = Director.order({ :dob => :desc}).first()
    @youngest_director_age = @youngest_director.dob

    render({ :template => "director_pages/youngest_director"})
  end

  def get_eldest_director
    @eldest_director = Director.order({ :dob => :asc}).first()
    @eldest_director_age = @eldest_director.dob

    render({ :template => "director_pages/eldest_director"})
  end


end
