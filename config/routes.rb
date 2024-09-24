Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "get_directors"})
  get("/directors/:the_id", { :controller => "directors", :action => "get_director"})
  get("/directors/youngest", { :controller => "directors", :action => "get_youngest_director"})
  get("/directors/eldest", { :controller => "directors", :action => "get_eldest_director"})
end
