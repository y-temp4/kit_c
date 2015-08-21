class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout 'flatly'

  before_action :login

  def login
    if session[:user_id].blank?
      user = User.create(name: [*1..9, *'A'..'Z', *'a'..'z'].sample(5).join)
      session[:user_id] = user.id
    end
    @user_id = session[:user_id]
    @user_name = User.where(id: @user_id).select(:name).pluck(:name)
  end
end
