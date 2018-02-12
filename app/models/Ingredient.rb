class Ingredient

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def most_common_allergen
    count = Hash.new 0
    Allergen.all.each do |allergen|
      count[allergen.ingredient] += 1
    end
    count.sort{|a,b| a[1] <=> b[1]}.last[0]
  end

end
