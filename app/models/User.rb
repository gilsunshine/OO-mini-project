class User

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select {|recipecard| recipecard.user == self}.map{|recipecard| recipecard.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select{|allergen| allergen.user == self}.map{|allergen| allergen.ingredient}
  end

  def top_three_recipes
    recipecards = RecipeCard.all.select{|recipecard| recipecard.user == self}
    recipecards.sort_by{|recipecard| recipecard.rating}.last(3)
  end

  def most_recent_recipe
    RecipeCard.all.sort_by{|recipecard| recipecard.date}.last
  end

  def safe_recipes
    safe_recipes = Recipe.all
    Recipe.all.each do |recipe|
      boolean = false
      self.allergens.each do |allergen|
        if recipe.ingredients.include?(allergen)
          boolean = true
        end
      end
      if boolean == true
        safe_recipes.delete(recipe)
      end
    end
    safe_recipes
  end
end
