Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :libraries
  delete    '/libraries/:id',      to: 'libraries#destroy'
  
  get       '/bubblesort',          to: 'bubblesort#index'
  get       '/bubblesort/inputtext',          to: 'bubblesort#bubblesorting'
  post      '/bubblesort',          to: 'bubblesort#bubblesorting'
  
  get       '/letuchka2',          to: 'letuchka2#index'
  get       '/letuchka2/inputtext',          to: 'letuchka2#letuchka'
  post      '/letuchka2',          to: 'letuchka2#letuchka'
  root 'libraries#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
