# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true

  # SMTP settings for gmail
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => Rails.application.credentials[:smtp][:smtp_user_name],
  :password             => Rails.application.credentials[:smtp][:smtp_password],
  :authentication       => "plain",
  :enable_starttls_auto => true
}