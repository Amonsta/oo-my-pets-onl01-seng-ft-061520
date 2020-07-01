class Owner
  # code goes here
  attr_accessor 
  attr_reader :name, :species
  @@all = []

  def initialize(name, species= "human")
    @name = name
    @species = species
    @@all << self
  end 

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats 
    Cat.all.select do |cat|
      cat.owner == self
    end 
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end 
  end

  def buy_cat(purchase)
    self.buy_cat(purchase) << Cat.new
  end 

  def buy_dog(purchase)
  end

  def walk_dogs
    Dog.mood = "happy"
  end

  def feed_cats
    Cat.mood = "happy"
  end 

  def sell_pets
    #mood = nervous
  end

  def list_pets
  end


end