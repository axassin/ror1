# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	:address => 'smtp.sendgrid.net',
	:port => 587,
	:authentication => :plain,
	:user_name => 'jiobuaron17@gmail.com',
	:password => ENV['SENDGRID_USERNAME'],
	:domain => ENV['SENDGRID_PASSWORD'],
	:enable_starttls_auto => true
}
