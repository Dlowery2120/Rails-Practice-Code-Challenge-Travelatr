class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, presence: true
    validates :bio, presence: true
    validates :name, uniqueness: true
    validates :bio, length: {minimum: 30} 

    def total_likes
        likes = self.posts.map {|post| post.likes}
        likes.sum
    end

    # def featured_posts
    #     posts = self.posts.select {|post| post.likes == total_likes}
    #     posts2 = posts.each do |post2|
    #          post2.title
    #     end
    #     posts2
            
       
        
    # end
end
