Rails.application.routes.draw do
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#top'
  
  get 'books' => 'books#index'
  
  post 'books' => 'books#create'
  
 
  
  
  
  
  

  
  
end
