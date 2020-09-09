require './lib/linkedlist.rb'
require './lib/node.rb'

puts 'hh'

list = LinkedList.new
# node = Node.new
# node.value = 1
# node.next = 2
# list.head = Node.new 1 #(Node.new 2)
# list.append 2, 3

#append testing below
list.head = Node.new 1
puts 'head'
p list.head
puts 'first append'
list.append 3
puts 'head after first append'
p list.head
puts 'tail first time'
p list.tail
puts ' 2nd append'
list.append 4
puts ' 2nd head check'
p list.head
puts ' tail check here 2nd'
p list.tail

#prepend testing
# a = list.head 
# list.head = Node.new 10, a
# puts
# p list.head
# puts


#'Testing of printitall'
# list.printitall list.head

# testing of 'size
# list.size

# testing of 'at'
p list.at 1