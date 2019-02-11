require "oyster_card"

describe Oystercard do
  it "gives first balance as zero" do
    expect(subject.balance).to eq 0
  end

  it "top's up the balance" do
    subject.top_up(5)
    expect(subject.balance).to eq 5
  end

end
