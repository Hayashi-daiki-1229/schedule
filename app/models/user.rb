class User < ApplicationRecord
   validates :title, presence: { message: "項目を入力してくだい" }
   validates :start, presence: { message: "項目を入力してくだい" }
   validates :fin, presence: { message: "項目を入力してくだい" }
   validates :memo, presence: { message: "項目を入力してくだい" }
   validate :start_end_check
   validate :start_date_before_today

def start_end_check
    if start.present? && fin.present? && start > fin
        errors.add(:終了日,"は開始日より後の日付を入力してください")
    end   
end

def start_date_before_today
    if start.present? && fin.present? && start < Date.today
        errors.add(:開始日,"は今日以降の日付で選択してください")
    end
end
end