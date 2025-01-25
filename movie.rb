class Movie
  attr_accessor :title, :description, :category

  def initialize(title, description, category)
    @title=title
    @description=description
    @category=category
  end

  def to_s
    "Title: #{title}\nDescription: #{description}\nCategory: #{@category}"
  end
end
