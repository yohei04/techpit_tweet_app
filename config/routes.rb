Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "signin", :to => "users/sessions#new"
    get "signout", :to => "users/sessions#destroy"
  end

  get 'static_pages/home'
end
