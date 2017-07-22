class ActorsController < ApplicationController

    def new_form
        render("/actors/new_form.html.erb")
    end

    def create_row
        new_actor = Actor.new
        new_actor.name = params["the_name"]
        new_actor.dob = params["the_dob"]
        new_actor.bio = params["the_bio"]
        new_actor.image_url = params["the_image_url"]
        new_actor.save
        
        redirect_to("/actors")
    end
   
    def index
        @list_of_actors = Actor.order(:created_at => :desc)

        render("/actors/index.html.erb")
    end
    
    def show
        @actor = Actor.find(params["the_id"])
  
        render("/actors/show.html.erb")
    end

    def edit_form
        @actor = Actor.find(params["an_id"])
  
        render("/actors/edit_form.html.erb")    
    end
    
    def update_row
        @actor = Actor.find(params["some_id"])
        
        @actor.name = params["the_name"]
        @actor.dob = params["the_dob"]
        @actor.bio = params["the_bio"]
        @actor.image_url = params["the_image_url"]
        @actor.save
        
        redirect_to("/actors/"+@actor.id.to_s)
    end
    
    def destroy_row
    
        actor = Actor.find(params["toast_id"])
        actor.destroy
        
        redirect_to("/actors")
    end

end