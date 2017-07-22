Rails.application.routes.draw do
  
  #CREATE - Directors
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/create_director", { :controller => "directors", :action => "create_row" })
  
  
  #READ - Directors
  # get("/", { :controller => "pictures", :action => "index" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:the_id", { :controller => "directors", :action => "show" })
  
  
  #UPDATE - Directors
  get("/directors/:an_id/edit", { :controller => "directors", :action => "edit_form" })
  get("/update_director/:some_id", { :controller => "directors", :action => "update_row" })
  
  
  #DELETE - Directors
  get("/delete_director/:toast_id", { :controller => "directors", :action => "destroy_row" }) 

  #CREATE - Actors
  get("/actors/new", { :controller => "actors", :action => "new_form" })
  get("/create_actor", { :controller => "actors", :action => "create_row" })
  
  
  #READ - Actors
  # get("/", { :controller => "pictures", :action => "index" })
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:the_id", { :controller => "actors", :action => "show" })
  
  
  #UPDATE - Actors
  get("/actors/:an_id/edit", { :controller => "actors", :action => "edit_form" })
  get("/update_actor/:some_id", { :controller => "actors", :action => "update_row" })
  
  
  #DELETE - Actors
  get("/delete_actor/:toast_id", { :controller => "actors", :action => "destroy_row" }) 
  
  # # CREATE
  # get("/photos/new", { :controller => "pictures", :action => "new_form" })
  # get("/create_photo", { :controller => "pictures", :action => "create_row" })

  # # READ
  # get("/", { :controller => "pictures", :action => "index" })
  # get("/photos", { :controller => "pictures", :action => "index" })
  # get("/photos/:the_id", { :controller => "pictures", :action => "show" })

  # # UPDATE
  # get("/photos/:an_id/edit", { :controller => "pictures", :action => "edit_form" })
  # get("/update_photo/:some_id", { :controller => "pictures", :action => "update_row" })

  # # DELETE
  # get("/delete_photo/:toast_id", { :controller => "pictures", :action => "destroy_row" }) 
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
