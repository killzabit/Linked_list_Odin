

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

  # def head_node


  def at(index)
    current_node = @head
    return current_node.itself
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