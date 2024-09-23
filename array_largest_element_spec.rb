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
end