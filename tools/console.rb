require_relative '../config/environment.rb'

recipe1 = Recipe.new("Recipe 1")
recipe2 = Recipe.new("Recipe 2")
recipe3 = Recipe.new("Recipe 3")
recipe4 = Recipe.new("Recipe 4")
recipe5 = Recipe.new("Recipe 5")
recipe6 = Recipe.new("Recipe 6")
recipe7 = Recipe.new("Recipe 7")
recipe8 = Recipe.new("Recipe 8")
recipe9 = Recipe.new("Recipe 9")


user1 = User.new("User 1")
user2 = User.new("User 2")
user3 = User.new("User 3")
user4 = User.new("User 4")
user5 = User.new("User 5")
user6 = User.new("User 6")
user7 = User.new("User 7")
user8 = User.new("User 8")
user9 = User.new("User 9")


recipecard1 = RecipeCard.new(user1, recipe1, 1, 5)
recipecard2 = RecipeCard.new(user2, recipe2, 2, 6)
recipecard3 = RecipeCard.new(user3, recipe2, 3, 5)
recipecard4 = RecipeCard.new(user4, recipe4, 4, 8)
recipecard5 = RecipeCard.new(user5, recipe5, 5, 5)
recipecard6 = RecipeCard.new(user6, recipe2, 6, 5)
recipecard7 = RecipeCard.new(user5, recipe3, 7, 7)
recipecard8 = RecipeCard.new(user3, recipe3, 8, 5)
recipecard9 = RecipeCard.new(user4, recipe6, 9, 5)


ingredient1 = Ingredient.new("Ingredient 1")
ingredient2 = Ingredient.new("Ingredient 2")
ingredient3 = Ingredient.new("Ingredient 3")
ingredient4 = Ingredient.new("Ingredient 4")
ingredient5 = Ingredient.new("Ingredient 5")
ingredient6 = Ingredient.new("Ingredient 6")
ingredient7 = Ingredient.new("Ingredient 7")
ingredient8 = Ingredient.new("Ingredient 8")
ingredient9 = Ingredient.new("Ingredient 9")


recipeingredient1 = RecipeIngredient.new(recipe1, ingredient1)
recipeingredient2 = RecipeIngredient.new(recipe1, ingredient2)
recipeingredient3 = RecipeIngredient.new(recipe3, ingredient3)
recipeingredient4 = RecipeIngredient.new(recipe4, ingredient4)
recipeingredient5 = RecipeIngredient.new(recipe5, ingredient5)
recipeingredient6 = RecipeIngredient.new(recipe1, ingredient6)
recipeingredient7 = RecipeIngredient.new(recipe2, ingredient7)
recipeingredient8 = RecipeIngredient.new(recipe3, ingredient8)
recipeingredient9 = RecipeIngredient.new(recipe4, ingredient9)


allergen1 = Allergen.new(user1, ingredient1)
allergen2 = Allergen.new(user1, ingredient4)
allergen3 = Allergen.new(user1, ingredient3)

# allergen3 = Allergen.new(user3, ingredient3)
# allergen4 = Allergen.new(user4, ingredient4)
# allergen5 = Allergen.new(user5, ingredient5)
# allergen1 = Allergen.new(user1, ingredient9)
# allergen2 = Allergen.new(user2, ingredient8)
# allergen3 = Allergen.new(user3, ingredient7)
# allergen4 = Allergen.new(user4, ingredient3)
# allergen5 = Allergen.new(user5, ingredient7)

binding.pry
