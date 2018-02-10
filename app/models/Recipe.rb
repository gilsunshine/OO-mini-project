class Recipe

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    RecipeCard.all.map{|recipecard| recipecard.recipe}.uniq
  end

  def self.most_popular
    counts = Hash.new 0
    self.all.each do |recipe|
      RecipeCard.all.each do |recipecard|
        if recipecard.recipe == recipe
          counts[recipe] += 1
        end
      end
    end
    counts.sort{|k,v| k[1]<=>v[1]}.last[0]
  end

  def users
    RecipeCard.all.select{|recipecard| recipecard.recipe == self}.map{|recipecard| recipecard.user}
  end

  def ingredients
    RecipeIngredient.all.select{|recipeingredient| recipeingredient.recipe == self}.map{|recipeingredient| recipeingredient.ingredient}
  end

  def allergens
    self.ingredients.select{|ingredient| Allergen.ingredients.include?(ingredient)}
  end

  def add_ingredients(ingredients)
    ingredients.each{|ingredient| RecipeIngredient.new(self, ingredient)}
  end
end
