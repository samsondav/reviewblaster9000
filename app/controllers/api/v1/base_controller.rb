module Api
  module V1
    class BaseController < ApplicationController
      protect_from_forgery with: :null_session
      skip_before_action :verify_authenticity_token, if: :json_request?
      respond_to :json
    end
  end
end
