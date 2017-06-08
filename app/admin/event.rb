# frozen_string_literal: true

ActiveAdmin.register Event do
  permit_params :name, :start_at, :description
end
