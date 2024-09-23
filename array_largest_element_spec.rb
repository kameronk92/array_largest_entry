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
    18, 31, 25, 62, 42, 84, 7, 13, -9, 59, -17, 90, 46, 29]
    expect(largest_number(arr)).to eq(99)
  end
end