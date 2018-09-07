class Poll < ApplicationRecord 
  
  belongs_to :user,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: 'User'
    
   has_many :questions, 
    primary_key: :id, 
    foreign_key: :poll_id,
    class_name: 'Question'
    
end