class User < ApplicationRecord
  # belongs_to :role
  has_many :notes

  scope :billable, -> { joins(:role).merge(Role.billable) }


  # def self.billable
  #     joins(:role).merge(Role.billable)
  # end
end
