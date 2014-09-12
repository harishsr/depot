# Load the Rails application.
require File.expand_path('../application', __FILE__)

Depot::Application.configure do 
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com", 
    port: 587,
    domain: "gmail.com",
    authentication: "plain",
    user_name: "harishsr.coder",
    password: "!189ILoveteng",
    enable_starttls_auto: true
  }

end

# Initialize the Rails application.
Depot::Application.initialize!
