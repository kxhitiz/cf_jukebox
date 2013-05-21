#!/usr/bin/ruby
class JukeBox
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
