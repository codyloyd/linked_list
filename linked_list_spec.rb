require './linked_list'

describe "Node" do 
	it "initializes correctly defaults" do
		node = Node.new
		expect(node.value).to eql(nil)
		expect(node.next_node).to eql(nil)
	end

	it "initializes with values" do 
		node = Node.new(3, 7)
		expect(node.value).to eql(3)
		expect(node.next_node).to eql(7)
	end
end

describe 'linked_list' do
	describe 'initialize' do
	  	it 'creates a head node' do
	  	  	list = LinkedList.new
	  	  	expect(list.head).to be_a(Node)  
	  	end
	end
  
end