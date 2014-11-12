class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_recipe
    Cupcake.find_by(id: session[:id])
  end

  helper_method :current_recipe

end
