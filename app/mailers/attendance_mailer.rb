class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'

  def attendance_email(user)
    @user = user
    mail(to: @user.email, subject: 'Participation bien enregistrée!')
  end
end
