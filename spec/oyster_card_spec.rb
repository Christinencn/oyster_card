require "oyster_card"

describe Oystercard do
  it "gives first balance as zero" do
    expect(subject.balance).to eq 0
  end

end
