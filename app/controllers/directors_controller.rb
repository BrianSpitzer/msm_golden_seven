class DirectorsController < ApplicationController

    def new
        render("/directors/new_form.html.erb")
    end

    def create_row
        new_director = Director.new
        new_director.name = params["the_name"]
        new_director.dob = params["the_dob"]
        new_director.bio = params["the_bio"]
        new_director.image_url = params["the_image_url"]
        new_director.save
        
        redirect_to("/directors")
    end
   
    def index
        @list_of_directors = Director.order(:created_at => :desc)

        render("/directors/index.html.erb")
    end
    
    def show
        @director = Director.find(params["the_id"])
  
        render("/directors/show.html.erb")
    end

end