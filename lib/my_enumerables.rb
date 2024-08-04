module Enumerable
  # Your code goes here
  def my_each_with_index
    ind = -1
    self.each do |elem|
      ind += 1
      yield(elem, ind)
    end
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    self.each do |elem|
      yield(elem)
    end
  end
end
