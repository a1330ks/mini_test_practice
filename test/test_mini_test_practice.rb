require 'minitest_helper'

class TestMiniTestPractice < MiniTest::Unit::TestCase
  def setup
    @my_class = ::MiniTestPractice::MyClass.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def test_odd?
    assert_equal false, @my_class.odd?(0)
    assert_equal true, @my_class.odd?(1)
    assert_equal false, @my_class.odd?(2) 
  end

  def test_check_number?
    assert_equal false, @my_class.check_number?(999)
    assert_equal true, @my_class.check_number?(1000)
    assert_equal true, @my_class.check_number?(9999)
    assert_equal false, @my_class.check_number?(10000)
  end

  def test_enough_length?
    assert_equal false, @my_class.enough_length?("ab")
    assert_equal true, @my_class.enough_length?("abc")
    assert_equal true, @my_class.enough_length?("abcdefgh")
    assert_equal false, @my_class.enough_length?("abcdefghi")
  end

  def test_divide
    assert_equal 0, @my_class.divide(1,3)
    assert_equal 1, @my_class.divide(2,3)
    assert_equal 0, @my_class.divide(3,3)
    assert_equal 3, @my_class.divide(4,3)
    assert_raises (ZeroDivisionError) {@my_class.divide(0,3)}
  end

  def test_fizz_buzz
    assert_equal "", @my_class.fizz_buzz(1)
    assert_equal "Fizz", @my_class.fizz_buzz(3)
    assert_equal "Buzz", @my_class.fizz_buzz(5)
    assert_equal "FizzBuzz", @my_class.fizz_buzz(15)
  end

  def test_say_hello
    out, err = capture_io do
      @my_class.say_hello
    end
    assert_equal "Hello", out  
  end

end
