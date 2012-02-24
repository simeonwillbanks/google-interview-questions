require 'minitest/autorun'
require_relative '../questions/12478687.rb'

class TestMethod12478687 < MiniTest::Unit::TestCase
  def test_1
    assert_equal method_12478687([2,10,5,6,80], 6), 10
  end

  def test_2
    assert_equal method_12478687([2,10,5,6,80], 20), 80
  end
end
