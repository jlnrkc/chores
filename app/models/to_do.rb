class ToDo < ApplicationRecord
  belongs_to: user
  belongs_to: chore

  validates :user, presence: true
  validates :chore, presence: true
end
