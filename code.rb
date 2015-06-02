#YOUR CODE GOES HERE
require "pry"
class Ingredient
  attr :quantity, :unit, :name
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end
end


class Recipe

  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def each_ingredient
    puts "Ingredient: "
    @ingredients.each do |ingredient|
      puts "- #{ingredient.summary}"
    end
  end

  def each_instruction
    count = 1
    puts "Instruction: "
    @instructions.each do |instruction|
     puts "#{count}. #{instruction}"
     count += 1
   end
  end

  def name
   puts @name
  end

  def summary
    <<-SUMMARY
     Name: #{name}


      #{each_ingredient}


      #{each_instruction}
    SUMMARY
  end
end

name = "Roasted Brussels Sprouts"

ingredients = [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]

instructions = [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ]


recipe = Recipe.new(name, instructions, ingredients)
recipe.summary
