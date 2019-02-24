class UserMailer < ApplicationMailer
  default from: 'hijasajmalaji@gmail.com'

  def welcome_mail(user_p)
    @url  = 'http://example.com/login'
    mail(to: user_p.email, subject: 'Welcome to My Awesome Site')
  end
end
