require './lib/node.rb'

class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def append(data)
    @head = Node.new(data)
    head.data
  end

  def count
    count = 0
    count += 1 if head
    count += 1 if head.next_node
    count
  end

  def to_string
    string_list = ""
    string_list += head.data if head
    string_list += head.next_node if head.next_node
    string_list
  end

end
