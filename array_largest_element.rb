def largest_number(array)
  if array.length == 0
    return "array is empty"
  end

  max = array[0]

  array.each do |element|
    if element.class == Integer && element.to_f > max
      max = element.to_f
    elsif element.class == Float && element > max
      max = element
    end
  end

  max
end