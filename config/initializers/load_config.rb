APP_CONFIG = YAML.load(ERB.new(File.read("#{Rails.root}/config/diacode13.yml")).result)[Rails.env]

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
 :enable_starttls_auto => true,
 :address => 'smtp.gmail.com',
 :port => 587,
 :domain => "diacode.com",
 :user_name => APP_CONFIG['gmail_username'],
 :password => APP_CONFIG['gmail_password'],
 :authentication => 'plain'
}

