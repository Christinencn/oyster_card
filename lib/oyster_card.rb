class Oystercard
  LIMIT = 90 # add limit as a constant so it stays the same
  attr_reader :balance # attr_reader makes these variables accessible in spec
  attr_reader :limit, :in_journey

  def initialize
    @balance = 0
    @limit = LIMIT
    @in_journey = false
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

  def in_journey?
    false
  end

  def touch_in
    @in_journey = true
  end

  def touch_out
    @in_journey = false
  end
end
