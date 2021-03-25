class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def most_recent
        self.posts.reverse[0..4] 
    end

    def total_likes
        likes = self.posts.map {|post| post.likes}
        likes.sum
    end

    def average_age
        age = self.bloggers.map {|blogger| blogger.age}.uniq
        age.sum / age.size
    end

end
