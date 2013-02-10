class NoCurrencyConversionError < StandardError; end;

class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.000}
  def in(currency)
    currency = currency.to_s.gsub(/s$/, '')
    if @@currencies.has_key?(currency)
      return self/@@currencies[currency]
    else
      NoCurrencyConversionError
    end
  end
      
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
end

class String
  def palindrome?()
    self.downcase.gsub(/\W/,"") == self.reverse.downcase.gsub(/\W/,"")
  end
end


module Enumerable
  def palindrome?()
    self.to_a.reverse == self.to_a
  end
end
