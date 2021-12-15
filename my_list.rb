require_relative './my_enumerables'

class MyList
  include MyEnumerables
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
