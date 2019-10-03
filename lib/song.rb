class Song 

attr_accessor :name, :artist
@@all = Array.new 

def initialize(name)
@name = name 
@@all << self 
end  

def self.all 
@@all 
end 
  
 
end 