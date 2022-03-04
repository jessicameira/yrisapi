class AssignmentsController < ApplicationController
  def index
    assignment = Assignment.all

    render json: assignment
  end
end
