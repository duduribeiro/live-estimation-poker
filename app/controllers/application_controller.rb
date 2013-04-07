require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  before_filter :authenticate_user!

  protect_from_forgery
end
