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
    @youngest_director = Director.all.order({ :dob => :desc}).first().name
    render({ :template => "director_pages/youngest_director"})
  end



end
