require_relative "menu"
require_relative "order"

class TakeAway

  def initialize
    @menu = Menu.new
    @order = Order.new
  end

  def see_menu
    @menu.dishes
  end

end


  # def order(dish, number=1)
  #   new_dish = @menu.select {|k, v| k==dish}
  #   add_order(new_dish, number)
  #   "#{number}x #{dish}(s) added to your basket."
  # end
  #
  #

  # def see_basket
  #   @basket
  # end
  #
  # def basket_total
  #   basket_prices = @basket.flat_map(&:values)
  #   @basket_total = basket_prices.reduce { |sum, price| sum + price }
  # end
  #
  # def basket_summary
  #   basket_total
  #   "Total = £#{@basket_total}, Basket = #{@basket}"
  # end

#   def checkout(amount)
#     raise "Please pay the correct amount of £#{@basket_total}." if !is_correct?(amount)
#     message = "Thank you for your payment of £#{amount}." +
#     " Your food will be delivered before #{delivery_time}."
#     message
#     #send_text(message)
#   end
#
#   # def send_text(message)
#   #   api_sid = ENV.fetch('TWILIO_ACCOUNT_SID')
#   #   api_auth = ENV.fetch('TWILIO_AUTH_TOKEN')
#   #
#   #   @client = Twilio::REST::Client.new(api_sid, api_auth,)
#   #   @client.messages.create(
#   #     from: ENV['TWILIO_NUMBER'],
#   #     to: ENV['TWILIO_MY_NUMBER'],
#   #     body: message
#   #     )
#   #
#   # end
#
#   def delivery_time
#     time = Time.now + (60 * 60)
#     time.strftime('%H:%M')
#   end
#
#   private
#
#   def add_order(new_dish, number)
#     number.times{@basket.push(new_dish)}
#   end
#
#   def is_correct?(amount)
#     amount == @basket_total
#   end
#
# end
