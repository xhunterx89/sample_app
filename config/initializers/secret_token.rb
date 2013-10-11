# Be sure to restart your server when you modify this file.

<<<<<<< HEAD
# Make sure your secret_key_base is kept private
# if you're sharing your code publicly, such as by adding
# .secret to your .gitignore file.
=======
# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# SampleApp::Application.config.secret_key_base = '456aa52ca45f71808c27fde89f792d058a2cc35be8625737a86041ae7d2aadeae02b7b7caacf97ce17c8022f9b4b9575f3d7a983204b633f5ead2c7c9aaa0186'
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
<<<<<<< HEAD
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp::Application.config.secret_key_base = secure_token
=======
     # Generate a new token and store it in token_file.
     token = SecureRandom.hex(64)
     File.write(token_file, token)
     token
  end
end

SampleApp::Application.config.secret_key_base = secure_token

>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc