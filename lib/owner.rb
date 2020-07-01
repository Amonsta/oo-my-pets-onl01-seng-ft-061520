class Owner
  # code goes here
  attr_reader :name, :species
  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self.new
  end 

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

end