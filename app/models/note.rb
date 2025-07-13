class Note < ApplicationRecord
  
  validates :name, lenght: { minimum: 3 }
  validates :body, presence: true
end