class TopsController < ApplicationController
  def index
    @faculties = Faculty.all
    @departments = Department.all
  end
end
