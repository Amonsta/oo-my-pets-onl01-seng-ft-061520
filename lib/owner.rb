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
    "I am a human."
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
    Cat.all.select do |owner|
      owner.all
    end 
  end

end