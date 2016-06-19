class Node
	attr_accessor :value, :next_node
	def initialize value = nil, next_node = nil
		@value = value
		@next_node = next_node
	end
end

class LinkedList
	def initialize
		@head = Node.new("head",nil)
	end
	# adds a new node to the end of the list
	def append(value)
		self.tail.next_node = Node.new(value,nil)
	end
	# adds a new node to the start of the list
	def prepend(value)
		@head.next_node = Node.new(value,@head.next_node)
	end
	# returns the total number of nodes in the list
	def size
		if @head.next_node
			node = @head.next_node
			i = 1
			while node.next_node
				node = node.next_node
				i += 1
			end
			return i
		else
			return 0
		end
	end
	# returns the first node in teh list
	def head
		@head
	end
	# returns the last node in the list
	def tail
		if @head.next_node
			node = @head.next_node
			while node.next_node
				node = node.next_node
			end
			node
		else
			@head
		end
	end
	# removes the last element from the list (and returns it)
	def pop
		if @head.next_node
			node = @head.next_node
			while node.next_node.next_node
				node =  node.next_node
			end
			popping = node.next_node
			node.next_node = nil
			return popping
		else
			return nil
		end
	end
	# returns true if the passed in value 
	# is in the list and otherwise returns false.
	def contains?(value)
		if @head.next_node
			node = @head.next_node
			while node.next_node
				if node.value == value
					return true
				else
					node = node.next_node
				end
			end
			return false
		else
			return false
		end
	end
	# returns the index of the node containing data, or nil if not found.
	def find(value)
		if @head.next_node
			node = @head.next_node
			i = 0
			while node.next_node
				if node.value == value
					return i
				else
					node = node.next_node
					i += 1
				end
			end
			return nil
		else
			return nil
		end
	end
	# represent your LinkedList objects as strings, 
	# so you can print them out and preview them in the console. 
	# The format should be: ( data ) -> ( data ) -> ( data ) -> nil
	def to_s
		if @head.next_node
			s = "(#{@head.next_node.value}) -> "
			node = @head.next_node
			while node.next_node
				s += "(#{node.next_node.value}) -> "
				node = node.next_node
			end
			s += "nil"
			return s
		else
			return "nil"
		end
	end
	# returns the node at a given index
	def at
	end
	# that inserts the data after the given index
	def insert_at(index)

	end
	# that removes the node at the given index. (You will need to 
	# update the links of your nodes in the list when you remove a node.)
	def remove_at(index)
	end

end
