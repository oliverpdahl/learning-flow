# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
    resources :drinks
    resources :completables, only: [:index]
    get '/paths', to: 'completables#paths'
    scope '/completables' do
      patch '/complete/:id', to: 'completables#toggle_complete'
    end
  end
end
