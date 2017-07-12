class Chore < ApplicationRecord

  REPEAT_TYPES = %w(
    Daily
    Weekly
    Monthly
    Bi-Annually
    Annually
  )
enum repeat_type: REPEAT_TYPES

  has_many :to_dos
  has_many :users, through: :to_dos

  validates :name, presence: true
  validates :description, presence: true
end
