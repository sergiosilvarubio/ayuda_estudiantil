AyudaEstudiantil1::Application.routes.draw do
  get "solucion_algoritmica/solucionAlgoritmica"

  get "curso12/curso12"

  get "curso11/curso11"

  get "curso10/curso10"

  get "curso9/curso9"

  get "curso8/curso8"

  get "curso7/curso7"

  get "curso6/curso6"

  get "curso5/curso5"

  get "curso4/curso4"

  get "curso3/curso3"

  get "curso2/curso2"

  get "curso1/curso1"

	resources :identities
	resources :sessions

	root :to => 'home#index'
	match "/auth/:provider/callback" => "sessions#create"
	match "/signout" => "sessions#destroy", :as => :signout
	match "/auth/failure" => "sessions#failure"
	
end
