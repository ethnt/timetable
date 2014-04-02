class SessionsController < ActionController::Base
  before_filter CASClient::Frameworks::Rails::Filter, except: [:destroy]

  def create
    user = User.where(email: session[:cas_user]).first

    if user
      session[:current_user] = user
    else
      user = User.create(email: session[:cas_user])

      session[:current_user] = user
    end

    redirect_to '/'
  end

  def destroy
    session[:current_user] = nil

    CASClient::Frameworks::Rails::Filter.logout(self)
  end
end
