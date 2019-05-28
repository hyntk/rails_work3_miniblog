Rails.application.routes.draw do
  resources:miniblogs do
    collection do
      post :confirm
    end
  end
end
