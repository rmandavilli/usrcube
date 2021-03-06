class MessageMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.send_message.subject
  #
  def send_message(message)
    @greeting = "Hi"
    @message = message
    mail to: "support@usrcube.com",
          from: message.email,
          subject: "support message from USRcube"
  end
end
