Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "get_directors"})
  get("/directors/youngest", { :controller => "directors", :action => "get_youngest_director"})
  get("/directors/eldest", { :controller => "directors", :action => "get_eldest_director"})
  get("/directors/:the_id", { :controller => "directors", :action => "get_director"})

  get("/movies", { :controller => "movies", :action => "get_movies"})
  get("/movies/:the_id", { :controller => "movies", :action => "get_movie"})

  get("/actors", { :controller => "actors", :action =>"get_actors"})
  get("/actors/:the_id", { :controller => "actors", :action => "get_actor"})
end
