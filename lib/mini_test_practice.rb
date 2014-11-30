require "mini_test_practice/version"

module MiniTestPractice
  class MyClass
    def odd?(value)
      (value % 2) == 1
    end

    def check_number?(value)
      value >= 1000 && value <= 9999
    end

    def enough_length?(str)
      len = str.split(//).size
      len >= 3 && len <= 8
    end

    def divide(num1,num2)
      val = num2.modulo(num1)
      return val
    end

    def fizz_buzz(num)
      isFizz = num.modulo(3) == 0
      isBuzz = num.modulo(5) == 0
      if isFizz && isBuzz then
        return "FizzBuzz"
      elsif isFizz
        return "Fizz"
      elsif isBuzz
        return "Buzz"
      else
        return ""
      end
    end

    def say_hello()
      print "Hello"
    end

  end
end
