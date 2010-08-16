# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fb_app_session',
  :secret      => '2a4c62630e291adcab0581debc46cf919604fe9a62a98203ab3fb1c9f9d52d7bd52eb3a19f4e800860a7a409bd1ffc76c167315dd6f1257bdae02f87d435187f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
