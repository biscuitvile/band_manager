class SessionsController < ApplicationController

  def create
    user = User.find_by email: params[:email].downcase
    if user && user.authenticate(params[:password])
      sign_in user
      redirect_to :root
    end
  end

end
