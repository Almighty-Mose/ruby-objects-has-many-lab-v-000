class Post
  attr_accessor :author, :title
  
  def initialize(title)
    @title = title
  end
  
  def author_name
    self.author.name ? self.author.name : nil
  end
end