require 'securerandom'
class User < ApplicationRecord
  # validates_presence_of :first_name
  after_create :send_confirmation_message


  def send_confirmation_message
    encrypt_password = Digest::SHA1.hexdigest(password)
    update_attributes(password: encrypt_password, confirmation_token: SecureRandom.hex(10))
    UserMailer.with(user: self).welcome_mail(self).deliver
  end
end
