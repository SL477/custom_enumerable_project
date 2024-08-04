module Enumerable
  # Your code goes here
  def my_each_with_index
    ind = -1
    self.each do |elem|
      ind += 1
      yield(elem, ind)
    end
  end

  def my_select
    ret = []
    self.each do |elem|
      if yield(elem)
        ret.push(elem)
      end
    end
    ret
  end

  def my_all?
    self.each do |elem|
      if !yield(elem)
        return false
      end
    end
    return true
  end

  def my_any?
    self.each do |elem|
      if yield(elem)
        return true
      end
    end
    return false
  end

  def my_none?
    self.each do |elem|
      if yield(elem)
        return false
      end
    end
    return true
  end

  def my_count
    cnt = 0
    self.each do |elem|
      if !block_given? || yield(elem)
        cnt += 1
      end
    end
    return cnt
  end

  def my_map(&my_block)
    ret = []
    self.each do |elem|
      ret.push(yield(elem))
    end
    ret
  end

  def my_inject(initial_value)
    ret = initial_value
    self.each do |elem|
      ret = yield([ret, elem])
    end
    ret
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
