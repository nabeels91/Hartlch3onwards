Rails.application.routes.draw do

  root 'static_pages#home'

#rout_path// root_url#

  get  '/home', to: 'static_pages#home'

  get get  '/help', to: 'static_pages#help'

  get get  '/about', to: 'static_pages#about'

  get get  '/contact', to: 'static_pages#contactus'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
