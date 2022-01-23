class ChangeGenerator

  def convert(amount)
    @conversion = [ ]
      calculate(amount)
    @conversion
end

  private

  def calculate(amount)
    amount = (amount * 100).ceil
    units.each do |key, value|
      if amount / key >= 1
      i = 1
        while i <= amount / key
          @conversion << value
          i += 1
        end
          amount -= key * (amount / key)
      end 
    end
  end

  def units
    {
      5000 => '£50',
      2000 => '£20',
      1000 => '£10',
      500 => '£5',
      100 => '£1',
      50 => '50p',
      20 => '20p',
      10 => '10p',
      5 => '5p',
      2 => '2p',
      1 => '1p'
    }
  end
end 



