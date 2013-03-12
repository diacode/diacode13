class MessageMailer < ActionMailer::Base
  default from: "mail@diacode.com"

  def contact_notification(inquiry)
    @inquiry = inquiry
    mail(:to => "hello@diacode.com", :subject => "Nueva solicitud de contacto en Diacode.com")
  end
end
