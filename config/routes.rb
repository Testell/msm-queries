Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "get_directors"})
  get("/directors/youngest", { :controller => "directors", :action => "get_youngest_director"})
  get("/directors/eldest", { :controller => "directors", :action => "get_eldest_director"})
end
