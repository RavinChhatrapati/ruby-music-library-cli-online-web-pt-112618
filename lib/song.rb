class Song
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
end
def self.create(name)
  self.new(name).tap do|song|
    song.save
end
end
def artist=(artist)
  if @artist = nil
    @artist = artist
  else
    @artist = artist
end
end
end
end