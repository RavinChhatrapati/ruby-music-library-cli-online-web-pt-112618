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
def self.create
  self.new(name) do|song|
    song.save
end
end
end
