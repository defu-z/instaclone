class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum: 100 }
    validates :description, presence: true, length: { minimum: 5, maximum: 500 }
    validates :keyword, presence: true, length: { minimum: 5, maximum: 100 }
    
    has_many_attached:images

    belongs_to :user
    # randomize id to private people see how many posts we have

end
  