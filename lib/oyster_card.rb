class Oystercard
  LIMIT = 90 # add limit as a constant
  attr_reader :balance # attr makes these variables accessible in spec
  attr_reader :limit
  def initialize
    @balance = 0
    @limit = LIMIT
  end

  def top_up(value)
    if (@balance + value) > @limit
      raise "maxium top up is #{@limit}" # use this to incorporate code inside string.
    else
    @balance = @balance + value
    end
  end

  def deduct(fare)
    @balance = @balance - fare 
  end
end
