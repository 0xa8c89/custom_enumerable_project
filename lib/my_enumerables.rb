module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each(&block)
    each do |i|
      block.call(i)
    end
  end

  def my_each_with_index(&block)
    each_with_index do |i, idx|
      block.call(i, idx)
    end
  end
end
