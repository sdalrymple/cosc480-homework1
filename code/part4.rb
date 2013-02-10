class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
 attr_accessor :name
 attr_accessor :calories

  def healthy?
    if @calories < 200
       return true
    end
    false
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @flavor = flavor
    super(name,calories)
  end
  
  attr_accessor :flavor

  def delicious?
    if @flavor.eql?("black licorice")
      return false
    end
    true
  end
end
