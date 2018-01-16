class Answer < ApplicationRecord


  validates_presence_of :user_name, :description
  validates :description, length: { minimum: 50 }

  belongs_to :question
end
