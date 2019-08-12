require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Zoom < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://zoom.us',
        :authorize_url => 'https://zoom.us/oauth/authorize',
        :token_url => 'https://zoom.us/oauth/token'
      }

      uid { raw_info['id'] }

      info do
        { 
          first_name: raw_info['first_name'],
          last_name:  raw_info['last_name'],
          email:      raw_info['email'],
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('v2/users/me').parsed
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end
