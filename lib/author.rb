class Author

attr_accessor :name
@@posts =[]

def initialize(name)
    @name = name
end

def posts
    Post.all.select { |post| @@posts << post }
end

def add_post(post)
@@posts << post
post.author = self
end

def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
end

def self.post_count
    Post.all.count
end



end
