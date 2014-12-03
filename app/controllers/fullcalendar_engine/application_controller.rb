module FullcalendarEngine
  class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
      User.find_by_netid(session[:cas_user]) if User.find_by_netid(session[:cas_user])
    end

  end
end
