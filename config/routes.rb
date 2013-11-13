Rxngif::Application.routes.draw do
  
#CREATE
  get("/new_picture_form", { :controller => "pictures", :action => "new" })
  get("/create_picture", { :controller => "pictures", :action => "create" })

#READ
 get("/picture_details/:id", { :controller => "pictures", :action => "show" })
 get("/all_pictures", {:controller => "pictures", :action => "index"})
 
#UPDATE 
  get("/update_picture/:id", { :controller => "pictures", :action => "update" })	
  get("/edit_picture_form/:id", { :controller => "pictures", :action => "edit" })

#DELETE
  get("/delete_picture/:id", { :controller => "pictures", :action => "destroy" })
  
end
