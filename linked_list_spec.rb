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
	  	before do
	  	   @list = LinkedList.new
	  	end
	describe 'initialize' do
	  	it 'creates a head node' do
	  	  	expect(@list.head).to be_a(Node)  
	  	end
	end
	describe 'append' do
		before do
		  @list.append(7)
		end
	  	it 'adds a new node' do
	  	  	expect(@list.head.next_node.value).to eql(7)
	  	end
	  	it 'works twice' do
	  	  	@list.append(3)
	  	  	expect(@list.head.next_node.next_node.value).to eql(3) 
	  	end
	end
	describe 'tail' do
	  	it 'returns head if empty' do
	  	  	expect(@list.tail.value).to eql("head")
	  	end
	  	it 'returns last with 1 value' do
	  	  	@list.append(7)
	  	  	expect(@list.tail.value).to eql(7)
	  	end
	  	it 'works with 2' do
	  	  	@list.append(7)
	  	  	@list.append(4)
	  	  	expect(@list.tail.value).to eql(4) 
	  	end
	end
	describe 'prepend' do
	  	before do
	  	  @list.append(7)
	  	end
	  	it 'prepends' do
	  	   @list.prepend(2)
	  	   expect(@list.head.next_node.value).to eql(2) 
	  	end
	end
	describe 'size' do
		it 'returns 0 if empty' do
		  	expect(@list.size).to eql(0)
		end
		it 'returns 1' do
		  	@list.append(3)
		  	expect(@list.size).to eql(1) 
		end
		it 'returns 3' do
			@list.append(3)
			@list.append(4)
			@list.append(6)
			expect(@list.size).to eql(3) 
		end
	end
	describe 'pop' do
	  	before do
	  		@list.append(3)
	  		@list.append(4)
	  		@list.append(6)
	  	end
	  	it 'removes last element' do
	  	  @list.pop
	  	  expect(@list.size).to eql(2) 
	  	end
	  	it 'returns last element' do
	  		expect(@list.pop.value).to eql(6)
	  	end
	end
  	describe 'contains?' do
  	  before do
  	  	@list.append(3)
  	  	@list.append(4)
  	  	@list.append(6)
  	  end
  	  it 'returns true' do
  	     expect(@list.contains?(4)).to eql(true) 
  	  end
  	  it 'returns false' do
  	     expect(@list.contains?(9)).to eql(false)
  	  end
  	end
  	describe 'find' do
		 before do
		 	@list.append(3)
		 	@list.append(4)
		 	@list.append(6)
		 end
		it 'works when true' do
		 	  expect(@list.find(4)).to eql(1)
		end 
		it 'works when false' do
			expect(@list.find(1)).to eql(nil)     
		end	  
  	end
  	describe 'to_s' do
  	before do
  		@list.append(3)
  		@list.append(4)
  		@list.append(6)
  	end
  	it 'works' do
  	    expect(@list.to_s).to eql("(3) -> (4) -> (6) -> nil")
  	end  
  	end
end