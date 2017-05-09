require 'minitest/test'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node.rb'
require './lib/linked_list.rb'

class LinkedListTest < Minitest::Test

  def test_it_exists
    l = LinkedList.new

    assert_instance_of LinkedList, l
  end

  def test_append
    l = LinkedList.new

    expected = "doop"
    actual = l.append("doop")

    assert_equal expected, actual
  end

  def test_append_creates_node
    l = LinkedList.new
    l.append("doop")

    expected = Node
    actual = l.head

    assert_equal expected, actual.class
  end

  def test_count
    l = LinkedList.new
    l.append("doop")

    expected = 1
    actual = l.count

    assert_equal expected, actual
  end

  def test_to_string
    l = LinkedList.new
    l.append("doop")

    expected = "doop"
    actual = l.to_string

    assert_equal expected, actual
  end

  def test_next_node_adds_next_node
    l = LinkedList.new
    l.append("doop")
    l.append("deep")

    expected = Node
    actual = l.head.next_node

    assert_equal expected, actual.class
  end

end
