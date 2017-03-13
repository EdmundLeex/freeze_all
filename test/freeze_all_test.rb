require 'test_helper'

class FreezeAllTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FreezeAll::VERSION
  end

  def test_it_freezes_all_objects_in_array
    arr = ['FOOBAR', 'BAR', 'FOO']
    arr.freeze_all

    error = assert_raises { arr[rand(0...arr.length)] << 'FOO' }
    assert_equal error.message, "can't modify frozen String"
  end

  def test_it_freezes_the_array_itself
    arr = ['FOOBAR', 'BAR', 'FOO']
    arr.freeze_all

    error = assert_raises { arr << 'FOO' }
    assert_equal error.message, "can't modify frozen Array"
  end

  def test_it_freezes_all_keys_in_hash
    hash = { 'a' => 'a', 'b' => 'b' }
    hash.freeze_all

    error = assert_raises { hash.keys.sample << 'c' }
    assert_equal error.message, "can't modify frozen String"
  end

  def test_it_freezes_all_values_in_hash
    hash = { 'a' => 'a', 'b' => 'b' }
    hash.freeze_all

    error = assert_raises { hash['b'] << 'c' }
    assert_equal error.message, "can't modify frozen String"
  end

  def test_it_freezes_the_hash_itself
    hash = { 'a' => 'a', 'b' => 'b' }
    hash.freeze_all

    error = assert_raises { hash['a'] = 'aa' }
    assert_equal error.message, "can't modify frozen Hash"

    error = assert_raises { hash[:c] = 'c' }
    assert_equal error.message, "can't modify frozen Hash"
  end
end
