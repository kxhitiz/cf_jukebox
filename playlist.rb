class Jukebox
  include Playlist
  attr_accessor :song_name
  #song_name = Array.new
  #song_name = ["Song1","Song2", "Song3"]

  def initialize(song_name)
   @song_name = song_name
  end

 end



  def currentTrack(song_name)
    puts  "#{song_name}"
  end


  def nextTrack(song_name)
    next1 = song_name.rotate
    next1.shift()
    next1
  end

  def previousTrack(song_name)
   prev1 = song_name.rotate
   prev1.pop()
   prev1
  end







Jukebox.new([Song1, Song2, Song3])
#Jukebox.new(["aaa","bbb","bbbb"])

