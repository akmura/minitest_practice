require 'test_helper'

class MinitestPracticeTest < Minitest::Test
  def setup
    @main=::MinitestPractice::Main.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MinitestPractice::VERSION
  end

  def test_odd?
    assert @main.odd?(1)
    assert !@main.odd?(0)
    assert !@main.odd?(2)
    assert !@main.odd?('word')
  end

  def test_check_number?
    assert !@main.check_number?(999)
    assert @main.check_number?(1000)
    assert !@main.check_number?(1001)
    assert !@main.check_number?(0100)
    assert !@main.check_number?(10000)
    assert !@main.check_number?(9999)
    assert @main.check_number?(9998)
  end
  
  def test_enough_length?
    assert !@main.enough_length?('ab')
    assert @main.enough_length?('abc')
    assert @main.enough_length?('abcdefgh')
    assert !@main.enough_length?('abcdefghi')
  end

  def test_devide
    assert_equal 2,@main.devide(4,2)
    assert_equal 3,@main.devide(9,3)
    assert_equal 1,@main.devide(3,2)
    assert_raises ZeroDivisionError do @main.devide(2,0) end
  end
  
  def test_fizz_buz
    [1,2,4,7,8,11,13,14].each{|input|
      assert_equal(nil,@main.fizz_buzz(input))
    }
    [15,30,45,60,75,90,105,120].each{|input|
      assert_equal('FizzBuzz',@main.fizz_buzz(input))
    }
    [3,6,9,12,18,21,24,27,33].each{|input|
      assert_equal('Fizz',@main.fizz_buzz(input))
    }
    [5,10,20,25,35,40,50,55].each{|input|
      assert_equal('Buzz',@main.fizz_buzz(input))
    }
    
    

  end

  def test_hello
    assert_output('Hello',nil){@main.hello}
  end
end
