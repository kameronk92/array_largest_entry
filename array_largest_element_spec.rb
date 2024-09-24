require "./array_largest_element.rb"

RSpec.describe "largest_number" do
  it "returns the largest entry in a single element array" do
    arr = [100]
    expect(largest_number(arr)).to eq(100)
  end 

  it "returns the largest entry in a single negative element array" do
    arr = [-100]
    expect(largest_number(arr)).to eq(-100)
  end 

  it "returns the largest entry in a two element array" do
    arr = [100, -100]
    expect(largest_number(arr)).to eq(100)
  end 

  it "can handle larger arrays" do
    arr = [34, -2, 16, 99, 3, 27, 56, -45, 0, 23, 12, 5, 77, 65, 88, -34, 
    18, 31, 25, 62, 42, 84, 7, 13, -9, 59, -17, 90, 46, 29, -1000]
    expect(largest_number(arr)).to eq(99)
  end

  it "gracefully exits empty arrays" do 
    arr = []
    expect(largest_number(arr)).to eq("array is empty")
  end

  it "ignores strings included in mixed arrays" do
    arr = [3, "hello", 2, -7, "world", 4]
    expect(largest_number(arr)).to eq(4)
  end

  it "works with floats" do
    arr = [12.7, 5.5, -3.14, 23.89, 9.0, 100.01, 55.55, -7.6, 0.01]
    expect(largest_number(arr)).to eq(100.01)
  end

  it "handles arrays with only identical entries" do
    arr = [10, 10, 10, 10, 10]
    expect(largest_number(arr)).to eq(10)
  end

  it "handles arrays with only negative numbers" do
    arr = [-50, -100, -1, -23]
    expect(largest_number(arr)).to eq(-1)
  end

  it "handles mixed floats and integers" do
    arr = [5, 12.7, -3.14, 100, -50, 55.55]
    expect(largest_number(arr)).to eq(100)
  end

  it "handles non numeric mixed arrays" do
    arr = [3, nil, true, -7, false, 4]
    expect(largest_number(arr)).to eq(4)
  end

end
