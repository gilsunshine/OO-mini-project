require_relative '../config/environment.rb'

recipe1 = Recipe.new("Recipe 1")
recipe2 = Recipe.new("Recipe 2")
recipe3 = Recipe.new("Recipe 3")
recipe4 = Recipe.new("Recipe 4")
recipe5 = Recipe.new("Recipe 5")

user1 = User.new("User 1")
user2 = User.new("User 2")
user3 = User.new("User 3")
user4 = User.new("User 4")
user5 = User.new("User 5")

recipecard1 = RecipeCard.new(user1, recipe1, 1, 5)
recipecard2 = RecipeCard.new(user2, recipe2, 1, 5)
recipecard3 = RecipeCard.new(user3, recipe2, 1, 5)
recipecard4 = RecipeCard.new(user4, recipe4, 1, 5)
recipecard5 = RecipeCard.new(user5, recipe5, 1, 5)

ingredient1 = Ingredient.new("Ingredient 1")
ingredient2 = Ingredient.new("Ingredient 2")
ingredient3 = Ingredient.new("Ingredient 3")
ingredient4 = Ingredient.new("Ingredient 4")
ingredient5 = Ingredient.new("Ingredient 5")

recipeingredient1 = RecipeIngredient.new(recipe1, ingredient1)
recipeingredient2 = RecipeIngredient.new(recipe2, ingredient2)
recipeingredient3 = RecipeIngredient.new(recipe3, ingredient3)
recipeingredient4 = RecipeIngredient.new(recipe4, ingredient4)
recipeingredient5 = RecipeIngredient.new(recipe5, ingredient5)

allergen1 = Allergen.new(user1, ingredient1)
allergen2 = Allergen.new(user2, ingredient3)
allergen3 = Allergen.new(user3, ingredient3)
allergen4 = Allergen.new(user4, ingredient4)
allergen5 = Allergen.new(user5, ingredient5)

binding.pry
