class TopsController < ApplicationController
  def index
    @departments = Department.all
  end
end
