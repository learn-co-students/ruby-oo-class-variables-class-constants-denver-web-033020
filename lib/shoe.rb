# Objective: Keep track of all of the brands of the all instances of shoe
# 1 Very similar to book.rb however, brand initialized upon instantiation of shoe. 
# 2 You also see that attr_reader for :brand has already been set up as well, meaning that we will make customization to initialize method directly.
# 3 Create a class constant BRANDS and set it equal to an empty array.
# 4 Shovel the brand into the class constant brand.
  # notice that we are being asked to have an array that only contains one instance of a genre, no repeats
    # constant BRAND is an array so we apply.include? method. we preface it by brand unless to say shovel brand in unless the class constant BRAND array inclues that brand already. 
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand #2

  BRANDS = [] #3

  def initialize(brand) #1
    @brand = brand #2 
    BRANDS << brand unless BRANDS.include?(brand) #4
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
