require_relative "../src/list"

describe "FizzBuzz" do

  it "give a list fill with 100 numbers" do
    list = List.new
    expect(list.size).to eq(100)
  end

  it "write Fizz when find a number divisible by 3" do
    list = List.new
    list.write_Fizz
    expect(list.return_value_position(2)).to eq("Fizz")
  end

  it "write Buzz when find a number divisible by 5" do
    list = List.new
    list.write_Buzz
    expect(list.return_value_position(4)).to eq("Buzz")
  end

  it "write FizzBuzz when find a number divisible by 5 and 3" do
    list = List.new
    list.write_FizzBuzz
    expect(list.return_value_position(14)).to eq("FizzBuzz")
  end

  it "write FizzBuzz, Fizz and Buzz" do
    list = List.new
    list.rename_list
    expect(list.return_value_position(14)).to eq("FizzBuzz")
  end
end
