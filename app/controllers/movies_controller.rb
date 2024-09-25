class MoviesController < ApplicationController
  def get_movies
    @movies = Movie.includes(:director).all

    render({ :template => "movies_pages/list"})
  end

  def get_movie
    the_id = params.fetch("the_id")

    matching_record = Movie.where({ :id => the_id })

    @the_movie = matching_record.at(0)

    @director_name = @the_movie.director.name

    render({ :template => "movies_pages/details"})
  end
end
