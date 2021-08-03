class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, with: :check_input

  protected
    def check_input(exception)
      redirect_to songs_path
    end
end
