require "active_support/core_ext/numeric/conversions"
require "./methods"

plans = [
  { destination: "沖縄旅行", price: 10000 },
  { destination: "北海道旅行", price: 20000 },
  { destination: "九州旅行", price: 15000 },
]

disp_plan(plans)
selected_plan = select_plan(plans)
number_of_people = select_number_of_people(selected_plan)
info_total_price(selected_plan, number_of_people)