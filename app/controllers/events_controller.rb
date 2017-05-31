# frozen_string_literal: true

class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def submit_questions
    ActiveRecord::Base.transaction do
      begin
        questions = params[:question_ids]

        questions.each_with_index do |_question_id, index|
          @question = Question.find(params[:question_ids][index])
          @event = @question.event
          create_question_submissions!(params, index)
        end

        flash[:notice] = 'Thanks For your response!'
        redirect_to event_path(@event)
      rescue
        render status: 500
      end
    end
  end

  private def create_question_submissions!(params, index)
    if params[:question_types][index] == 'string'
      QuestionSubmission.create!(body: params[:question_submissions][index], question: @question)
    elsif params[:question_types][index] == 'boolean'
      QuestionSubmission.create!(bool: params[:question_submissions][index], question: @question)
    end
  end
end
