class Owner
  # code goes here
  attr_reader :name, :species
  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
  end 

  def say_species
    "I am a human."
  end

  def self.all
  end

end