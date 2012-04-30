IceCreamApp::Application.routes.draw do

  get "/flavors", :controller =>"flavors", :action => "index"
  post "/flavors", :controller => "flavors", :action => "create"
  
  get "/flavors/new", :controller => "flavors", :action => "new"
  get "/flavors/:id", :controller => "flavors", :action => "show"
  put "/flavors/:id", :controller => "flavors", :action => "update"
  
  get "/flavors/:id/edit", :controller => "flavors", :action => "edit"
  delete "/flavors/:id", :controller => "flavors", :action => "destroy"
  
end
