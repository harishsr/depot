class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :time_loaded

  def time_loaded
    return Time.new.strftime('%I:%M %p')
  end 
end
