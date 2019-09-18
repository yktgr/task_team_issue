class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: '登録完了'
  end

  def info_mail(team,user)
    @email = user.email
    @name = team.name
    mail to: @email, subject: '権限変更'
  end
end
