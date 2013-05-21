class Jukebox

	attr_accessor :playlist

	def initialize(playlist)
	  @playlist = playlist
	end





	def next_track
		
		current_track = @playlist.shift() 
		@playlist.push(current_track)
		print current_track
	end

	def pre_track
		
		current_track=@playlist.pop()
		@playlist.unshift(current_track)
		print current_track
	end
end