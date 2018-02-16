class Author
  attr_accessor :name, :posts
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(title)
    @posts << title
    title.author = self
    @@post_count += 1
  end
  
  def add_post_by_name(name_of_post)
    title = Post.new(name_of_post)
    @posts << title
    title.author = self
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count
  end
end
  
  
    
    