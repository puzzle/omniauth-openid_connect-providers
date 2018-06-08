module OmniAuth::OpenIDConnect
  class Puzzle < Provider
    def host
      config?('host') || ENV['RAILS_OMNIAUTH_HOST']
    end

    def client_options
      opts = {
        :scope => :openid,
        :identifier => ENV['RAILS_OMNIAUTH_PROVIDER'],
        :secret => ENV["RAILS_OMNIAUTH_SECRET_KEY"],
        :redirect_uri => ENV["RAILS_OMNIAUTH_REDIRECT_URI"],
        :authorization_endpoint => ENV['RAILS_OMNIAUTH_AUTHORIZATION_ENDPOINT'],
        :token_endpoint => ENV['RAILS_OMNIAUTH_TOKEN_ENDPOINT'],
        :userinfo_endpoint => ENV['RAILS_OMNIAUTH_USERINFO_ENDPOINT'], 
        :display_name => ENV["RAILS_OMNIAUTH_DISPLAY_NAME"],
        :sso => ENV['RAILS_OMNIAUTH_SSO'],
        :issuer => ENV['RAILS_OMNIAUTH_ISSUER'], 
        :end_session_endpoint => ENV['RAILS_OMNIAUTH_END_SESSION_ENDPOINT'],
        :check_session_iframe => ENV['RAILS_OMNIAUTH_CHECK_SESSION_IFRAME']
      }

      opts.merge super
    end
  end
end
