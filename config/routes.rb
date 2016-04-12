Rails.application.routes.draw do
  resources :movies, only: [:index] do
    member do
      get 'order'
    end
  end

  root to: redirect('/movies')
end
