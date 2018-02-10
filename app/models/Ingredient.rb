class Ingredient

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    RecipeIngredient.all.map{|recipeingredient| recipeingredient.ingredient}.uniq
  end

  def self.most_common_allergen
    counts = Hash.new 0
    self.all.each do |ingredient|
      Allergen.all.each do |allergen|
        if allergen.ingredient == ingredient
          counts[ingredient] += 1
        end
      end
    end
    counts.sort{|k,v| k[1]<=>v[1]}.last[0]
  end
end
