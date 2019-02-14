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

it "deducts an amount from the balance" do  #another way to test whether to deduct from the balance
  subject.top_up(20)
  expect{ subject.deduct 3}.to change{ subject.balance }.by -3
  end
end
