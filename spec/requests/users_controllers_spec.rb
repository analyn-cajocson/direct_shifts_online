# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'UsersControllers', type: :request do
  let(:user) { FactoryBot.create(:user) }
  let(:auth_headers) { user.create_new_auth_token }

  context 'POST /api/user/invite' do
    before do
      post api_user_invite_path, params: { email: 'analyncajocson@gmail.com' }, headers: auth_headers
    end

    it 'returns status 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'sends an email' do
      expect(ActionMailer::Base.deliveries.count).to eq(1)
    end
  end
end
