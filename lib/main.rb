# frozen_string_literal: true

require './lib/linkedlist.rb'
require './lib/node.rb'

list = LinkedList.new

list.head = Node.new 1
puts
for i in 2..10
  list.append i
end
puts
p list.head
puts
list.size
puts
list.prepend 0
puts
p list.head
puts
list.head_node
puts
list.tail_node
puts
p list.at 5
puts
list.pop
puts
p list.head
puts
p list.contains? 9
puts
p list.find 10
puts
list.insert_at -1, 0
puts
p list.head
puts
list.remove_at 0
puts
p list.head
