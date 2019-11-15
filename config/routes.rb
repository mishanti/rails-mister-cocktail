Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



# Rails.application.routes.draw do
#   resources :restaurants, only: [ :index, :new, :create, :show ] do
#     resources :reviews, only: [ :new, :create ]
#   end
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
