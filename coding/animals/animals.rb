# can be ran as a ruby script using `ruby animals.rb`


class Food
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Animal
  def initialize(name)
    @name = name
    @food_preferences = { }
    @eating_sound = ""
  end

  def eat(food)
    if @food_preferences[:likes].include?(food.class)
      puts "The #{@name} likes the #{food.name}"
      print_noise(3)
    else
      puts "The #{@name} does not like the #{food.name}"
      print_noise(1)
    end
  end

  def print_noise(times)
    (1..times).each do
      puts @sound
    end
    nil
  end
end

class Cat < Animal
  def initialize
    super('Cat')
    @food_preferences[:likes] = [CatFood, Chicken, Milk]
    @sound = "meow"
  end
end

class Dog < Animal
  def initialize
    super('Dog')
    @food_preferences[:likes] = [DogFood, CatFood, Chicken, HumanFood]
    @sound = "bark"
  end
end

class Chicken < Food
  def initialize
    super("Chicken")
  end
end

class CatFood < Food
  def initialize
    super("Cat Food")
  end
end

class DogFood < Food
  def initialize
    super("Dog Food")
  end
end

class HumanFood < Food
  def initialize
    super("Human Food")
  end
end

class Lemons < Food
  def initialize
    super("Lemons")
  end
end

class Milk < Food
  def initialize
    super("Milk")
  end
end

def demonstrate
  cat = Cat.new
  dog = Dog.new

  cat_food = CatFood.new
  dog_food = DogFood.new
  lemons = Lemons.new

  cat.eat(cat_food)
  dog.eat(dog_food)
  cat.eat(lemons)
  dog.eat(lemons)
end

demonstrate
