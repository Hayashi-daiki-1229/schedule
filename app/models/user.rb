class User < ApplicationRecord
  validates :title,presence:true
  validates :start, presence: true
  validates :fin, presence: true
  validates :all, {acceptance: true}
  validates :memo, length: { in: 10..30 }
  validate :start_end_check

  def start_end_check
    errors.add(:fin, "は開始日より前の日付は登録できません。") unless
    self.start < self.fin
  end
end