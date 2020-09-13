# frozen_string_literal: true

# Can be expanded to any type of linked list node.
class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
