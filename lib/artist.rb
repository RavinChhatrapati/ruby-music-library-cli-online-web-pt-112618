class Artist
@@all = []
attr_accessor :name
def initialize(name)
@name = name
end
def self.all
  @@all
end
def destroy_all
self.all.clear
end
def save
  @@all << self
end
def self.create(name)
  self.new(name).tap do|artist|
    artist.save
  