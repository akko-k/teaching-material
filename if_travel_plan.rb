require "active_support/core_ext/numeric/conversions"

plans = [
  {destination: "沖縄旅行", price: 10000},
  {destination: "北海道旅行",price: 20000},
  {destination: "九州旅行",price: 15000}
]

puts "旅行プランを選択してください"

plans.each.with_index(1) do|plan,i|
puts "#{i}. #{plan[:destination]}(¥#{plan[:price].to_s(:delimited)})"
end

print "プランを選択 >"

selected_number = gets.chomp.to_i

selected_plan = plans[selected_number -1][:destination]

if  0 < selected_number && selected_number < 4
  puts "#{selected_plan}ですね、何人で行きますか？"
else
  exit
end

print "人数を入力 >"

number_of_people=gets.chomp.to_i

selected_plan_price = plans[selected_number -1][:price]

total_price = number_of_people * selected_plan_price
discounted_total_price = number_of_people * selected_plan_price * 0.9

if number_of_people >= 5
  puts "#{number_of_people}人以上なので10%割引となります"
  puts "合計料金：¥#{discounted_total_price.round.to_s(:delimited)}"
elsif number_of_people > 1
  puts "合計料金：¥#{total_price.to_s(:delimited)}"
else
  exit
end