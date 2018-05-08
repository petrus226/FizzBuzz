class List

  def initialize
    @array = Array.new(100)
    100.times do |n|
      @array[n] = n + 1
    end
  end

  def rename_list
    write_FizzBuzz
    write_Buzz
    write_Fizz
    p @array
  end

  def return_value_position(position)
    #p @array
    @array[position]
  end

  def write_Fizz
    @array.count.times do |n|
      @array[n] = "Fizz" if divisible_by_3?(@array[n])
    end
  end

  def write_Buzz
    @array.count.times do |n|
      @array[n] = "Buzz" if divisible_by_5?(@array[n])
    end
  end

  def write_FizzBuzz
    @array.count.times do |n|
      @array[n] = "FizzBuzz" if divisible_by_3?(@array[n]) && divisible_by_5?(@array[n])
    end
  end

  def divisible_by_3?(number)
    number % 3 == 0
  end

  def divisible_by_5?(number)
    number % 5 == 0
  end

  def size
    @array.count
  end
end
