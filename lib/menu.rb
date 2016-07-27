class Menu
attr_reader :dishes

  def initialize
    @dishes = {
      :wonton_soup => 2.99,
      :spring_roll => 2.99,
      :kung_po => 5.99,
      :fried_squid => 6.99,
      :chow_mein => 9.99,
      :roasted_duck => 9.99
    }
  end

end
