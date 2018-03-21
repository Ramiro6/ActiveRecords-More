class Note < ApplicationRecord
    # belongs_to :notable, polymorphic: true
    belongs_to :user

    #scope :by_user, ->(user) { joins(:user).merge(User.where(id: user.id)).all }
end
