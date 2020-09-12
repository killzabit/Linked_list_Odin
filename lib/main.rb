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


# testing of 'size
# list.size

#test head_node
# list.head_node

#test tail_node
# list.tail_node

#test 'at'
# p list.at 0
#below is how we will return for the 'at'
# p list.head.next_node.to_s


#test 'pop'
# puts
# p 'below is pop'
# p list.pop
# p 'here is tail'
# p list.tail
# p 'here is head'
# p list.head

#test 'contains?'
# p list.contains? 11

#test 'find
# p list.find 4

#this is to_s but ug ug 
#'Testing of printitall'
# list.printitall list.head
puts
#test 'insert_at'
list.insert_at 2, 0
p list.head