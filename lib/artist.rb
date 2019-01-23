class Artist
@@all = []
attr_accessor :name
def initialize(name)
@name = name
@song = []
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
  self.new(name).tap do|artist|
    artist.save
  end
end
end
