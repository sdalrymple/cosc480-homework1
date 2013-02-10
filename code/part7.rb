class CartesianProduct
  include Enumerable
  def  initialize(l1, l2)
    @cart = []
    l1.each do |w1|
      l2.each do |w2|
        @cart.push([w1,w2])
      end
    end
  end
  def each(&blk)
    @cart.each(&blk)
  end
end
