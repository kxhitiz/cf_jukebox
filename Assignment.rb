#!/usr/bin/ruby
class NewJukeBox
	@@songsList
	@@currentSongNo
	@@currentSong
	
	def initialize(*songs)
		@@songsList = songs
		@@currentSongNo = 0
		@@currentSong= @@songsList.at(@@currentSongNo)
	end
	
	def print
		puts "#@@songsList"
	end

	def nextSong
		@@currentSongNo += 1
		if @@currentSongNo>@@songsList.length-1
			@@currentSongNo = 0
		end
		@@currentSong = @@songsList[@@currentSongNo]
		display
	end

	def prevSong
		@@currentSongNo -= 1
		if @@currentSongNo<0
			@@currentSongNo = @@songsList.length-1
		end
		@@currentSong=@@songsList[@@currentSongNo]
		display
	end
	
	def display
		puts "Current Track: #@@currentSong"
	end
	
	def RandPlay
		@@currentSongNo = rand(@@songsList.length)
		@@currentSong = @@songsList[@@currentSongNo]
	end

end

r = JukeBox.new("highway to hell", "fairyTail", "Naruto", "Cloud", "Bleach")
#r.print
#r.display
#r.prevSong
#r.prevSong
#r.prevSong
#r.prevSong
#r.prevSong
#r.nextSong
#r.nextSong
#r.prevSong
#r.nextSong
#r.nextSong
#r.prevSong*/
#================================================Next Version================================================#
class JukeBox
  attr_accessor :current_play, :songs

  def initialize(*songs)
    @songs = songs
    @current_play = 0
  end

  def add_song(song)
    songs << song
  end

  def play
    @songs.first
  end

  def next
    (@current_play += 1) > songs.length ? songs.first : songs[current_play]
  end

  def prev
    current_play -= 1 < 0 ? songs.last : songs[current_play]
  end

  def suffle
    songs.sample
  end

  def self.currentPlaying
    songs[current_index]
  end
end
