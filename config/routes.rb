Rails.application.routes.draw do
  get 'customer/search'
#   devise_for :users
    devise_for :users, controllers: { registration: "users/registration", session: "users/session"}

    devise_scope :user do
        get 'users/sign_out' => "devise/sessions#destroy"
    end
    root 'home#index'
    get 'home/about'
    get 'home/complaint'
    get 'home/faq'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
