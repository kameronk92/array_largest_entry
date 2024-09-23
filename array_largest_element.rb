def largest_number(array)
  max = 0 
  array.each do |element|
    if element > max
      max = element
    end
  end
  max
end