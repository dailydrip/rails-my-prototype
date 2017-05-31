# frozen_string_literal: true

Rails.application.routes.draw do
  get 'events' => 'events#index'
  get 'events/:id' => 'events#show', as: :event
  post 'events/submit_questions'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
