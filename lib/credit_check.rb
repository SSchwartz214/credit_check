require "pry"

# class CreditCheck
  def validate_cc(card_number)
    cc_digits_reversed = process_string(card_number)
    cc_digits_doubled = double_every_other(cc_digits_reversed)
    cc_digits_subtracted_by_nine = subtract_nine(cc_digits_doubled)
    cc_digits_summed = total_sum(cc_digits_subtracted_by_nine)
    cc_validity = modulo_ten(cc_digits_summed)
    output(cc_validity)
  end

  def process_string(string_number)
    # convert into an array with elements
    cc_string_digits = string_number.chars

    # convert elements into intergers
    cc_interger_digits = cc_string_digits.map do |number|
      number.to_i
    end

    # reverse the numbers
    cc_interger_digits.reverse
  end

  def double_every_other(digits)
  # Double every other number
    digits.map.with_index do |number, index|
        if index.odd?
          number *= 2
        end
        number
    end
  end

  def subtract_nine(digits)
  # Subtract 9 from all numbers > 9 (same as adding double digit numbers together)
    digits.map do |number|
      if number > 9
        number -= 9
      end
      number
    end
  end

  def total_sum(digits)
  # Get the total sum
      digits.sum
  end

  def modulo_ten(number)
  # Check to see if the number is a multiple of 10 and print valid or invalid
    number % 10 == 0
  end

  def output(validity)
    #print valid or invalid
    if validity == true
      puts "The number is valid!"
      return true
    else
      puts "The number is invalid!"
      return false
    end
  end
# end

# credit_check_one = CreditCheck.new("5541808923795240")
# credit_check_one.validate_cc
cc_number = "6011797668868728"
validate_cc(cc_number)
