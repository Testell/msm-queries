class DirectorsController < ApplicationController
  def get_directors
    render({ :template => "director_pages/list"})
  end
end
