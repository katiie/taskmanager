class Task < ApplicationRecord
    validates :title, presence: true
    validates  :description, presence: true, length: { minimum: 10 }
    validates :duedate, presence: true
    
    scope :task_search, ->(name) { where('title LIKE ?', "%#{name}%").or(where('description LIKE ?', "%#{name}%")) }
end
