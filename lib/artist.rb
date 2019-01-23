class Artist
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
  self.new(name).tap do|artist|
    artist.save
  end
end
def songs
  @songs
end
def add_song
  song.artist = self unless song.artist == self
     @songs << song unless @songs.include?(song)
end
end
