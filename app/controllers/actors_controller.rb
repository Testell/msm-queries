class ActorsController < ApplicationController
  def get_actors

    render({ :template => "/actor_pages/list"})
  end

  def get_actor
    the_id = params.fetch("the_id")

    matching_records = Actor.where({ :id => the_id })

    @the_actor = Actor.find(params[:the_id])
    @matching_movies = @the_actor.movies.includes(:director)
   
    @actor_roles = @the_actor.characters

    render({ :template => "/actor_pages/details"})
  end
end
