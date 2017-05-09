require 'minitest/test'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node.rb'

class NodeTest < Minitest::Test

  def test_it_exists
    n = Node.new("plop")

    assert_instance_of Node, n
  end

  def test_data_returns
    n = Node.new("plop")

    expected = "plop"
    actual = n.data

    assert_equal expected, actual
  end

  def test_next_node
    n = Node.new("plop")

    expected = nil
    actual = n.next_node

    assert_equal expected, actual
  end
end
