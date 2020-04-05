# Objective : keep track of all of the genres of all of the Books we create using a class constant.
# 1 Create contant GENRES and set it equal to an empty array. This is where we will store the genres of all instances. 
# 2 We know that we need to somehow get the genre of each instance and shovel it in the class constant GENRES
# 2 Judging by the original code, we know that genre is not one of the attributes initialized when an instance is created
# 3 In original, attr_accessor contained :author, :page_count, AND :genre, meaning genre has been set and can be gotten.
# 3 However, you know that we need to customize the genre method as we want to add the genre into the class constant GENRES.
    # 3 We will need to create our customed setter method so delete :genres from attr_accessor and in clude in attr_ reader. we will still want to get this method
# 4 define genre where you set the genre then, shovel it into the constants array. 

class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre #3
  
  GENRES =[] # 1

  def initialize(title) #2
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  def genre=(genre) #4
    @genre = genre
    GENRES << genre
  end
end