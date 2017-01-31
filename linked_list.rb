class Node
	attr_accessor :value, :next_node

	def initialize(value=nil, next_node=nil)
		@value = value
		@next_node = next_node
	end

end


class LinkedList
	attr_accessor :head :tail

	def initialize#(head=nil, tail=nil)
		#@head = head
		#@tail = tail
	end

	def append(value)
		if self.size == 0
			@head = Node.new(value)
			@tail = @head
		else
			@tail = Node.new(value)
			@tail.next_node = @tail

			


			
		end
	end

	def prependvalue
	end

	def size
	end

	def head
	end

	def tail
	end

	def at(index)
	end

	def pop
	end

	def contains?(value)
	end

	def find(data)
	end

	def to_s
	end


end