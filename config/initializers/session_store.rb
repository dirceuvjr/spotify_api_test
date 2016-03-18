# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_spotify_api_test_session',
  :secret      => 'a90d67269425ed638c5f3785341609e328e5b71787afc17d83222663374efeb697fa8443749f1c0064a7205f3ae11b089f986839a1757fbde348b8e3fe932b11'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
