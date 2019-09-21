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

  def agenda_destroy_mail(title,user)
    @email = user.email
    @title = title
    mail to: @email, subject: 'アジェンダを削除しました'
  end


end
