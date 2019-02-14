require "oyster_card"

describe Oystercard do
  it "gives first balance as zero" do
    expect(subject.balance).to eq 0
  end

  it "top's up the balance" do
    subject.top_up(5)
    expect(subject.balance).to eq 5 # . balance is accessing attr_reader
  end

  it "raises error if amount is beyond limit" do
  expect { subject.top_up(91) }.to raise_error "maxium top up is #{subject.limit}" #uses {} syntax as it is raising an error, limit is accessing attr_reader
  end

  it "reduces balance when used" do
  subject.top_up(5) # need to top up first inorder to increase the balance
  subject.deduct(2)
  expect(subject.balance).to eq 3
  end

  it "touch in at the start of your journey" do
  subject.touch_in
expect(subject.in_journey).to eq true
  end

  it "is in the journey" do
  expect(subject.in_journey).to eq false
  end

  it "can touch out " do
    subject.touch_in
    subject.touch_out
    expect(subject.in_journey).to eq false
  end
end
