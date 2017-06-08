# frozen_string_literal: true

ActiveAdmin.register QuestionSubmission do
  permit_params :body, :bool, :position, :event_id, :question_id
end
