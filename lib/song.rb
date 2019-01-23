class Song
@@all = []
attr_accessor :name
def initialize(name, artist = nil) # makes artist as an optional argument when set to artist =
  @name = name
  self.artist = artist if artist
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
  if @artist == nil
    @artist = artist
  else
    @artist = artist
end
end
if self.artist != nil
      @artist.add_song(self)
    end
    @artist
end


def artist
  @artist
end
end
