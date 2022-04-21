class Task < ApplicationRecord
    validates :title, presence: true
    validates  :description, presence: true, length: { minimum: 10 }
    validates :duedate, presence: true
    
end
