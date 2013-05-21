






class Jukebox

  attr_accessor :songs

  def initialize(songs)
    @songs = songs
  end

def next_track
c = songs.shift()
songs.push(c)
c

end

def previous_track
d = songs.pop()
songs.unshift(d)
d
end

end

jb=Jukebox.new(["t1", "t2"])


