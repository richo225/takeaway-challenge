require "takeaway"

describe TakeAway do
  subject(:takeaway) {TakeAway.new}

  describe "#initialize" do
    it "begins with a menu" do
      expect(takeaway.menu).to_not be nil
    end

    it "begins with an empty basket" do
      expect(takeaway.basket).to be_empty
    end
  end

  describe "#see_menu" do
    it "allows customer to see the menu" do
      expect(takeaway).to respond_to(:see_menu)
    end

    it "displays the menu list" do
      expect(takeaway.see_menu).to eq takeaway.menu
    end
  end

  describe "#order" do
    it "adds one ordered dish to basket as default" do
      takeaway.order(:dish)
      expect(takeaway.basket).to eq [:dish]
    end
    it "adds multiple ordered dishes to basket" do
      takeaway.order(:dish, 3)
      expect(takeaway.basket).to eq [:dish, :dish, :dish]
    end
  end

end

# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices

# As a customer
# So that I can order the meal I want
# I would like to be able to select some number of several available dishes


# feature test 1
# takeaway = TakeAway.new
# takeaway.see_menu
# #returns hash - list of food with prices

# feature test 2
# takeaway = TakeAway.new
# takeaway.see_menu
# takeaway.order(:wonton_soup)
# takeaway.basket = [:wonton_soup]
# takeaway.order(:spring_roll, 5)
# takeaway.basket = [:wonton_soup, :spring_roll, :spring_roll, :spring_roll, :spring_roll, :spring_roll]
