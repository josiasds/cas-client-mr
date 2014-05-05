# Be sure to restart your server when you modify this file.

# Rails.application.config.session_store :cookie_store, key: '_cas-client_session'

require 'rack-cas/session_store/rails/active_record'
Rails.application.config.session_store :rack_cas_active_record_store
