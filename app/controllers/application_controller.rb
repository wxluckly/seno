class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def admin_user!
    redirect_to :root unless current_user.try(:admin?)
  end
end
