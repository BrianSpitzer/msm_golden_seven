class MoviesController < ApplicationController

    def new_form
        render("/movies/new_form.html.erb")
    end

    def create_row
        new_movie = Movie.new
        new_movie.title = params["the_title"]
        new_movie.year = params["the_year"]
        new_movie.duration = params["the_duration"]
        new_movie.description = params["the_description"]
        new_movie.image_url = params["the_image_url"]
        new_movie.save
        
        redirect_to("/movies")
    end
   
    def index
        @list_of_movies = Movie.order(:created_at => :desc)

        render("/movies/index.html.erb")
    end
    
    def show
        @movie = Movie.find(params["the_id"])
  
        render("/movies/show.html.erb")
    end

    def edit_form
        @movie = Movie.find(params["an_id"])
  
        render("/movies/edit_form.html.erb")    
    end
    
    def update_row
        @movie = Movie.find(params["some_id"])
        
        @movie.title = params["the_title"]
        @movie.year = params["the_year"]
        @movie.duration = params["the_duration"]
        @movie.description = params["the_description"]
        @movie.image_url = params["the_image_url"]
        @movie.save
        
        redirect_to("/movies/"+@movie.id.to_s)
    end
    
    def destroy_row
    
        movie = Movie.find(params["toast_id"])
        movie.destroy
        
        redirect_to("/movies")
    end

end