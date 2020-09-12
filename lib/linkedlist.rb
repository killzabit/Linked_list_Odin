

class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value=nil, next_node=nil)
    if @tail == nil
      @tail = Node.new value, next_node
      @head.next_node = @tail
    else
      a = Node.new value, next_node
      @tail.next_node = a
      @tail = a
    end
  end

  def prepend(value)
    a = @head
    @head = Node.new value, a
  end

  def size
    i = 0
    current_node = @head
    loop do
      if current_node.next_node == nil
        i += 1
        break
      else
        i += 1
        current_node = current_node.next_node
      end
    end
    puts " The list is #{i} node/s long"
  end

  def head_node
    p @head.value
  end

  def tail_node
    p @tail.value
  end


  def at(index)
    current_node = @head
    i = 0
    loop do
      return current_node.Node if i == index
      current_node = current_node.next_node
      i += 1
    end
  end

  def pop
    current_node = @head
    prev_node = nil
    loop do
      break if current_node.next_node == nil
      prev_node = current_node
      current_node = current_node.next_node
    end
    prev_node.next_node = nil
    @tail = prev_node
  end

  def contains?(value)
    current_node = @head
    loop do
      return true if current_node.value == value
      return false if current_node.next_node == nil
      current_node = current_node.next_node
    end
  end

  def find(value)
    current_node = @head
    i = 0
    loop do
      current_node.value == value ? (return i) : i += 1
      current_node = current_node.next_node
    end
    nil
  end
  
  def insert_at(value, index)
    current_node = @head
    prev_node = nil
    node = Node.new value
    i = 0
    loop do
      if i == index
        return prepend value if i == 0
        p node
        prev_node.next_node = node
        node.next_node = current_node
        puts "here: #{p node}"
        puts "prev: #{p prev_node}"
        break
      else
        break if current_node.next_node == nil
        prev_node = current_node
        current_node = current_node.next_node
        i += 1
      end
    end
  end

  def printitall(node_start)
    current_node = node_start
    next_node_val = current_node.next_node
    loop do
      puts "Current node value: #{current_node.value}"
      puts "The next node is #{current_node.next_node}"
      puts
      break if current_node.next_node == nil
      current_node = current_node.next_node
    end
    puts 'you printed them all bud'
  end

  

end