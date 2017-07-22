class DirectorsController < ApplicationController
   
    def index
        @list_of_directors = Director.order(:created_at => :desc)

        render("/directors/index.html.erb")
    end
    
    def show
        @director = Director.find(params["the_id"])
  
        render("/directors/show.html.erb")
    end
    
end