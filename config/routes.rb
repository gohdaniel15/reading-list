Rails.application.routes.draw do

  root 'books#index'

  resources :books, except: [:show] do
    put :read, on: :member
    put :unread, on: :member
  end

end
