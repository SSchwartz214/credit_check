require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require 'pry'

class CreditCheckTest < Minitest::Test
  def test_process_string
    assert_equal [6,5,4,3,2,1], process_string("123456")
  end

  def test_double_every_other
    assert_equal [6,10,4,6,2,2], double_every_other([6,5,4,3,2,1])
  end

  def test_subtract_nine
    assert_equal [6,1,4,6,2,2], subtract_nine([6,10,4,6,2,2])
  end

  def test_total_sum
    assert_equal 21, total_sum([6,1,4,6,2,2])
  end

  def test_modulo_ten
    assert_equal false, modulo_ten(21)
  end

  def test_output
    assert_equal false, output(false)
  end

  def test_validate_cc
    assert_equal true, validate_cc("4929735477250543")
    assert_equal true, validate_cc("5541808923795240")
    assert_equal true, validate_cc("4024007136512380")
    assert_equal true, validate_cc("6011797668867828")
    assert_equal false, validate_cc("5541801923795240")
    assert_equal false, validate_cc("40240071065123803")
    assert_equal false, validate_cc("6011797668868728")
  end
end
