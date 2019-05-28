Rails.application.routes.draw do
  root 'miniblogs#index'
  resources:miniblogs do
    collection do
      post :confirm
    end
  end
end
