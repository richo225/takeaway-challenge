require "menu"
require "takeaway"

describe Menu do
  subject(:menu) {Menu.new}
  subject(:takeaway) {TakeAway.new}

  describe "#initialize" do
    it "begins with a collection of dishes" do
      expect(menu.dishes).to_not be nil
    end
  end

end
