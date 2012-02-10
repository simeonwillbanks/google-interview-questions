require 'minitest/autorun'
require_relative '../questions/12435684.rb'

class TestAllSubstrings < MiniTest::Unit::TestCase

  def test_all_substrings
    assert_equal all_substrings('abc'), ['abc', 'a','b','c','ab','ac','bc']
  end

  def test_all_substrings_2
    assert_equal all_substrings('abcd'), ['abcd', 'a','b','c','d','ab','ac','ad','bcd','cd']
  end

end
