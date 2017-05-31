# frozen_string_literal: true

ActiveAdmin.register Question do
  permit_params :body, :bool, :position, :event_id
end
