class Artist

attr_accessor :name 
@@all = Array.new 

def initialize(name)
self.name = name 
@@all << self 
end 

def self.all 
@@all 
end 

def songs
Song.all.select {|song| song.artist == self}
end

def add_song(song)
song.artist = self
end 

def self.find_or_create_by_name(name)
Artist.all.detect {|names| name == Artist.name} || artist = Artist.new(name)
end 




end 