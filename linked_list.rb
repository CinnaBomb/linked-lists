class Node
	attr_accessor :value, :next_node

	def initialize(value=nil, next_node=nil)
		@value = value
		@next_node = next_node
	end

end


class LinkedList
	attr_accessor :head, :tail, :size

	def initialize
		@size = 0
	end

	def append(value)
		new_node = Node.new(value)
		if @size == 0
			@head = new_node
			@tail = new_node
		else
			@tail.next_node = new_node
			@tail = new_node
		end
		@size +=1
	end

	def prepend(value)
		#needs work
		new_node = Node.new(value)
		temp = @head.next_node
		@head.next_node = @head
		@head = new_node
	end

	def size
		return @size
	end

	def head
		return @head.to_s
	end

	def tail
		return @tail.to_s
	end

	def at(index)
		return @head if index == 0
		current_node = @head.next_node
		unless current_node.next_node.nil?
			for i in (1...index)
				current_node = current_node.next_node
			end 
		end
		return current_node
	end

	def pop
		#needs work
		if @size == 1

		end
		current_node = @head
		for i in (0..@size)
			if current_node.next_node.nil? == false
				current_node = current_node.next_node
			else
				temp = current_node
				current_node = nil
				@tail = temp
				return temp
			end
		end
	end

	def contains?(value)
		if self.find(value) == -1
			return false
		else
			return true
	end

	def find(data)
		current_node = @head
		for i in (0, @size)
			if current_node.value == data
				return i
			else
				current_node = current_node.next_node
			end
		end
		return -1
	end

	def to_s
		str = ""
		current_node = @head
		while current_node.nil? == false
			str += "( #{current_node.value} ) -> "
			current_node = current_node.next_node
		end
		str += "nil"
	end


end

a = LinkedList.new
a.append("zero")
a.append("one")
a.append("two")
a.append("three")
a.append("new")
#puts a.at(0).inspect
a.at(1)
#puts a.at(2).inspect
a.at(3)
#puts a.at(4).inspect
#puts a.tail.inspect
puts a.to_s