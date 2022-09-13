class Task < ApplicationRecord
  validates :title, presence: true
  validates :start_day, presence: true
  validates :end_day, presence: true
  validates :schedule_memo, length: {maximum:100}
  validate :start_end_check

  def start_end_check
    return unless start_day? && end_day?
    if !end_day.after?(start_day)
      errors.add(:end_day, "は開始日より前の日付は登録出来ません。")
    end
  end

end