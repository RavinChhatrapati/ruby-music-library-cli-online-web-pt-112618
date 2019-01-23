class Genre
@@all = []
attr_accessor :name
def initialize(name)
  @name = name
  @songs = []
end
 def self.all
   @@all
end
def self.destroy_all
  self.all.clear
end
def save
  @@all << self
end
def self.create(name)
  self.new(name).tap do|genre|
    genre.save
  end
end
end
