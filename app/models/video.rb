class Video < ActiveRecord::Base
	def description_snippet
		self.description.truncate(50)
	end

	def rand_num
		rand(1..5)
	end

	def next_id(nextId)
		@array = Video.all.map &:id
		if @array.include?(nextId)
			return nextId
		else
			return nextId - 1
		end
	end

	def prev_id(prevId)
		@array = Video.all.map &:id
		if @array.include?(prevId)
			return prevId
		else
			return prevId + 1
		end
	end



end
