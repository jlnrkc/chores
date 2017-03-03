class Chore < ApplicationRecord

  REPEAT_TYPE = %w(
    Daily
    Weekly
    Monthly
    Bi-Annually
    Annually
  )
enum repeat_type: REPEAT_TYPES

  has_many :todos
  has_many :users

  validates :name, presence: true
  validates :description, presence: true
end
