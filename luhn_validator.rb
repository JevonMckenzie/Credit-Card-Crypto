module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum

    nums_a = number.to_s.chars.map(&:to_i)

    total_sum = nums_a.pop
    double_digit = []

    a_rev = nums_a.reverse!

    a_rev.map!.with_index(0){ |x, index| if index % 2 == 0
                        2*x
                    else
                        1*x end}

    a_rev.each { |x|
        if x > 9
          double_digit = x.to_s.chars.each_slice(1).map{|a| a.join.to_i}
          total_sum = total_sum + double_digit[0] + double_digit[1]
        else
          total_sum = total_sum + x
        end
        }

    if total_sum % 10 == 0
      return true
    else
      return false
    end

    # TODO: use the integers in nums_a to validate its last check digit
  end
end
<<<<<<< HEAD
=======

>>>>>>> f3ac83e2906f932fbc10b42c8276d9ae18d9c356
