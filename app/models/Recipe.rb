class Recipe

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    count = Hash.new 0
    RecipeCard.all.each do |recipecard|
      count[recipecard.recipe] += 1
    end
    count.sort{|a,b| a[1] <=> b[1]}.last[0]
  end

  def users
    RecipeCard.all.select{|recipecard| recipecard.recipe == self}.map{|recipecard| recipecard.user}
  end

  def ingredients
    RecipeIngredient.all.select{|recipeingredient| recipeingredient.recipe == self}.map{|recipeingredient| recipeingredient.ingredient}
  end

  def allergens
    Allergens.all.select{|allergen| self.ingredients.include?(allergen)}
  end

  def add_ingredients(ingredients)
    ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)}
  end

end
