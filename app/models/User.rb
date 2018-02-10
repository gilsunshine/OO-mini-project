class User

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    RecipeCard.all.map{|recipecard| recipecard.user}.uniq
  end

  def recipes
    RecipeCard.all.select{|recipecard| recipecard.user == self}.map{|recipecard| recipecard.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select{|allergen| allergen.user == self}.map{|allergen| allergen.ingredient}
  end

  def top_three_recipes
    RecipeCard.all.select{|recipecard| recipecard.user == self}.sort_by!{|recipecard| recipecard.rating}.first(3)
  end

  def most_recent_recipe
    RecipeCard.all.select{|recipecard| recipecard.user == self}.sort_by!{|recipecard| recipecard.date}.first
  end

end
