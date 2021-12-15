module MyEnumerables
  def all?
    each { |value| return false unless yield value }
    true
  end

  def any?
    each { |value| return true if yield value }
    false
  end

  def filter
    array = []
    each { |value| array << value if yield value }
    array
  end
end
