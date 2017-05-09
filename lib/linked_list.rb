require './lib/node.rb'

class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def append(data)
    if head.nil?
      @head = Node.new(data)
      head.data
    else
      head.next_node = Node.new(data)
      head.next_node
    end
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
