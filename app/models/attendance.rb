class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
  after_create :attendance_send

  def welcome_send
    AttendanceMailer.attendance_email(self).deliver_now
  end
end
