# frozen_string_literal: true

module Api
  class UsersController < ApplicationController
    before_action :authenticate_api_user!

    def invite
      UserInviteMailer.notify(params[:email]).deliver

      render json: { message: 'Invite Sent' }
    end
  end
end
