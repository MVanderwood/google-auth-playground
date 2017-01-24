class UserMfaSessionController < ApplicationController
  def new
  end

  def create
    user = current_user
    if user.google_authentic? params[:mfa_code]
      UserMfaSession.create user
      redirect_to root_path
    else
      flash[:error] = "Wrong code"
      render :new
    end
  end
end
