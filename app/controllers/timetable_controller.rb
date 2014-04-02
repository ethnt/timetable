class TimetableController < ActionController::Base
  before_filter CASClient::Frameworks::Rails::Filter, except: [:index]

  def index
  end
end
