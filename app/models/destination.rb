class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def bloggers_average_age
        ages = self.bloggers.collect {|b| b.age.to_f}
        ages.sum / ages.count 
    end
end
