class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre, :brands
  GENRES = []
  BRANDS = []

  def initialize(title)
    @title = title
    
    

  end

  def genre=(genre)
    @genre = genre 
    GENRES << genre
  end

  def brands=(brand)
    @brads = brand
    BRANDS << brand.uniq
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

end