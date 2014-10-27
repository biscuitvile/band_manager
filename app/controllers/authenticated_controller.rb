class AuthenticatedController < ApplicationController
  before_action :require_user

  def deny_user_access
    redirect_to :login
  end

end
