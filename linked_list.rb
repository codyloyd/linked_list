class Node
	attr_accessor :value, :next_node
	def initialize value = nil, next_node = nil
		@value = value
		@next_node = next_node
	end
end

class LinkedList
	attr_accessor :head
	def initialize
		@head = Node.new("head",nil)
	end
	# adds a new node to the end of the list
	def append(value)
		self.tail.next_node = Node.new(value,nil)
	end
	# adds a new node to the start of the list
	def prepend
	end
	# returns the total number of nodes in the list
	def size
	end
	# returns the total number of nodes in the list
	def head
	end
	# returns the last node in the list
	def tail
		if @head.next_node

		else
			@head
		end
	end
	# removes the last element from the list
	def pop
	end
	# returns true if the passed in value 
	# is in the list and otherwise returns false.
	def contains?
	end
	# returns the index of the node containing data, or nil if not found.
	def find(data)
	end
	# represent your LinkedList objects as strings, 
	# so you can print them out and preview them in the console. 
	# The format should be: ( data ) -> ( data ) -> ( data ) -> nil
	def to_s
	end
	# that inserts the data after the given index
	def insert_at(index)
	end
	# that removes the node at the given index. (You will need to 
	# update the links of your nodes in the list when you remove a node.)
	def remove_at(index)
	end

end
