class User < ApplicationRecord
 has_many :todos
 has_many :chores

validates :name, presence: true
end
