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

  def my_select(&block)
    r_arr = []
    each do |i|
      r_arr << i if block.call(i)
    end
    r_arr
  end

  def my_all?(&block)
    each { |i| return false unless block.call(i) }
    true
  end

  def my_any?(&block)
    each { |i| return true if block.call(i) }
    false
  end

  def my_none?(&block)
    each { |i| return false if block.call(i) } and true
  end
end
