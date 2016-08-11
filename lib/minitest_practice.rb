require "minitest_practice/version"

module MinitestPractice
  class Main
    def odd?(n)
      (n % 2) ==1
    end

    def check_number?(n)
      n>=1000 && n<10000 && (n % 2 ==0)
    end

    def enough_length?(word)
      word.length>=3 && word.length <=8
    end

    def devide(x,y)
      return x/y
    end

    def fizz_buzz(n)
      return 'FizzBuzz' if n % 15 ==0
      return 'Fizz' if n % 3 ==0
      return 'Buzz' if n % 5 ==0
      return ''
    end

    def hello
      print 'Hello'
    end
  end
end
