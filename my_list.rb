require_relative './my_enumerables'

class MyList
  include MyEnum
  def initialize(*args)
    @list = args
  end

  def each
    i = 0
    while i < @list.length
      yield @list[i]
      i += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e > 5 })
puts(list.all? { |e| e < 5 })
