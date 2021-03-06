# frozen_string_literal: true

class Question < ApplicationRecord
  belongs_to :event
  has_many :question_submissions, dependent: :destroy
end
