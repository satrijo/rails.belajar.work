Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "webinars#index"

  get "/upcoming" => "webinars#upcoming"
  get "/stories" => "webinars#stories"

  get "/content/all" => "webinars#all"

  resources :webinars, path: :content



end
