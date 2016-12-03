class Task < ActiveRecord::Base
  belongs_to:account
  scope :completed, -> { where(is_done: true) } 
  scope :start_with, -> (word) { where("name like ?","#{word}%") }
end
