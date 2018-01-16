class Question < ApplicationRecord
  validates_presence_of :user_name, :title, :description
  validates :title, length: { minimum: 20 }
  validates :description, length: { minimum: 50 }

  has_many :answers
end
