# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class SassGridExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/sass_grid"
  
  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :sass_grid
  #   end
  # end
  
  def activate
    # admin.tabs.add "Sass Grid", "/admin/sass_grid", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
    # admin.tabs.remove "Sass Grid"
  end
  
end
