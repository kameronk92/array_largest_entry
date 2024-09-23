require "./array_largest_element.rb"

RSpec.describe "largest_number" do
  it "returns the largest entry in an array" do
    arr = [100]
    expect(largest_number(arr)).to eq(100)
  end 
end