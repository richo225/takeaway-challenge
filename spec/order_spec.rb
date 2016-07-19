require "takeaway"
require "order"

describe Order do
  subject(:order) {Order.new}

  it "begins with an empty basket" do
    expect(order.basket).to be_empty
  end
  # before (:each) do
  #   takeaway.menu = {:dish => 2.99}
  # end
  # it "adds one ordered dish to basket as default" do
  #   takeaway.order(:dish)
  #   expect(takeaway.basket).to eq [{:dish => 2.99}]
  # end
  # it "adds multiple ordered dishes to basket" do
 #       takeaway.order(:dish, 3)
 #       expect(takeaway.basket).to eq [{:dish => 2.99}, {:dish => 2.99}, {:dish => 2.99}]
 #     end
 #     it "assigns prices to ordered dishes" do
 #       takeaway.order(:dish)
 #       expect(takeaway.basket[0]).to eq :dish => 2.99
 #     end
 #     it "confirms the order" do
 #       expect(takeaway.order(:dish, 3)).to eq "3x dish(s) added to your basket."
 #     end
end
