class JukeBox
	# add new item to the playlist or view the current playlist
	attr_accessor :playlist

	# who knows other's taste, my friend's playlist is extremely long
	def initialize(*list)
		if !list
			@playlist = ['song1', 'song2', 'song3', 'song4', 'song5']
		else
			@playlist = list
		end
		@current_index = 0
	end

	def next
		if @current_index < (@playlist.length - 1)
			@current_index += 1
		else
			@current_index = 0
		end
		@playlist[@current_index]
	end

	def back
		if @current_index > 0
			@current_index -= 1
		else
			@current_index = @playlist.length - 1
		end
		@playlist[@current_index]
	end

	def shuffle
		@current_index = rand(@playlist.length)
		@playlist[@current_index]
	end
end