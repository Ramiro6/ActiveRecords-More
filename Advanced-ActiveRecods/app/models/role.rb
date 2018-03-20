class Role < ApplicationRecord
  has_many :users

  scope :billable, -> { where(billable: true) }

  # cleaning code for console
  # def self.billable
  #     where(billable: true)
  # end
end
