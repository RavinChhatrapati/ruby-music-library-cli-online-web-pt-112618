class Genre
@@all = []
attr_accessor :name
def initialize(name)
  @name = name
end
 def self.all
   @@all
end
def self.destroy_all
  self.all.clear
end
def save
  @@all << self
def self.create(name)
  self.new(name).tap do|genre|
    genre.save