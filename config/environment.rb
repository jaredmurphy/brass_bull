# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Action Mailer Configuration
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :tls => true,
  :address => "jaredcmurphy@gmail.com",
  :port => 587,
  :domain => "gmail.com",
  :authentication => :login,
  :user_name => ENV["EMAIL_USERNAME"],
  :password => ENV["EMAIL_PASSWORD"]
}