class DirectorsController < ApplicationController
  def get_directors
    render({ :template => "director_pages/list"})
  end

  def get_director
    the_id = params.fetch("the_id")

    matching_records = Director.where({ :id => the_id})

    @the_director = matching_records.at(0)
    
    render({ :template => "director_pages/details"})
  end
end
