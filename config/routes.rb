Rails.application.routes.draw do
  root 'homes#top'

  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]



  get 'home/about' => 'homes#about'
  resources :books do
   resource :favorites, only: [:create, :destroy]
   resources :book_comments, only: [:create, :destroy]
end

end