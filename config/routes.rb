Rails.application.routes.draw do
  get 'games', to: 'video_games#index'
end
