class UserInviteMailer < ApplicationMailer

  def notify(email)
    @email = email

    mail(to: @email, subject: "Join Us!")
  end
end