class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_authentication

  def require_authentication
    puts session['cas'].inspect
    render(text: 'You shall not pass!', status: :unauthorized, layout: false) if request.session['cas'].nil?
  end
end
