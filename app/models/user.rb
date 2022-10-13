class User < ApplicationRecord
    belongs_to:users
end

class User < ApplicationRecord
  has_many :user, dependent: :destroy
end
