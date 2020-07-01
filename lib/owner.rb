class Owner
  # code goes here
  attr_reader :name, :species
  @@all = []

  def initialize(name, species)
    @name = name
    @species = human
  end 

  def say_species
    "I am a human."
  end

  def self.all
    @@all << self.new
  end

  def self.count
  end

  def self.reset_all
    self.all.clear
  end

end