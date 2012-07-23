class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_user
  
  def find_user
    if session[:uid]
      @user = User.find_by_id(session[:uid])
    end
  end
  
end
