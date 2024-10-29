# app/controllers/finance_controller.rb
class FinanceController < ApplicationController
  def index
    @crops = [
      { name: "Rice", market_rate: 50, buying_price: 45, selling_price: 55 },
      { name: "Betel Leafs", market_rate: 30, buying_price: 25, selling_price: 35 },
      { name: "Cashew", market_rate: 100, buying_price: 95, selling_price: 105 },
      { name: "Peanuts", market_rate: 60, buying_price: 55, selling_price: 65 },
      { name: "Potato", market_rate: 20, buying_price: 18, selling_price: 22 }
    ]
  end
end
