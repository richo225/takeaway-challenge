class TakeAway

  attr_accessor :menu, :basket, :basket_total

  def initialize
    @basket = []

    @menu = {
      :wonton_soup => 2.99,
      :spring_roll => 2.99,
      :kung_po => 5.99,
      :fried_squid => 6.99,
      :chow_mein => 9.99,
      :roasted_duck => 9.99
    }
  end

  def order(dish, number=1)
    new_dish = @menu.select {|k, v| k==dish}
    add_order(new_dish, number)
    "#{number}x #{dish}(s) added to your basket."
  end

  def see_menu
    @menu
  end

  def see_basket
    @basket
  end

  def basket_total
    basket_prices = @basket.flat_map(&:values)
    @basket_total = basket_prices.reduce { |sum, price| sum + price }
  end

  def basket_summary
    basket_total
    "Total = £#{@basket_total}, Basket = #{@basket}"
  end

  def checkout(amount)
    if amount == @basket_total
      "Thank you for your payment of £#{amount}"
    else
    raise "Please pay the correct amount of £#{@basket_total}"
    end
  end

  private

  def add_order(new_dish, number)
    number.times{@basket.push(new_dish)}
  end

end
