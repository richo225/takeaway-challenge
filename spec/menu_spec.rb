require "menu"
require "takeaway"

describe Menu do
  subject(:menu) {Menu.new}

  describe "#display_dishes" do
    it "displays the dishes" do
      expect(menu.display_dishes).to eq dishes
    end
  end

end
