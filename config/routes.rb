Rxngif::Application.routes.draw do
  
#CREATE
  get "/pictures/new", :controller => "pictures", :action => "new", :as=>"new_picture"
  post "/pictures", :controller => "pictures", :action => "create", :as=>"pictures"

#READ
 get "/pictures/:id", :controller => "pictures", :action => "show", :as=>"picture"
 get "/pictures", :controller => "pictures", :action => "index", 

#UPDATE 
  patch "/picture/:id", :controller => "pictures", :action => "update"
  get "/pictures/:id/edit", :controller => "pictures", :action => "edit", :as => "edit_picture"

#DELETE
  delete "/pictures/:id",  :controller => "pictures", :action => "destroy"
  
end
