require_relative './my_enumerables'

class MyList
  include MyEnumerables
  def initialize(*args)
    @list = args
  end
end
