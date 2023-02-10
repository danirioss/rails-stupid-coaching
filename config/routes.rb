Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "pages#homepage"
  get "ask", to: "questions#ask"
  get "answer", to: "questions#answer"
end
