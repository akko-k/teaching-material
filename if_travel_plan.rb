plans= [
  {plan: "沖縄旅行", price: 10000},
  {plan: "北海道旅行",price: 20000},
  {plan: "九州旅行",price: 15000}
]

puts <<~TEXT
旅行プランを選択してください
1. 沖縄旅行（¥10,000）
2. 北海道旅行（¥20,000）
3. 九州旅行（¥15,000）
TEXT

print "プランを選択 >"

selected_plan = gets.chomp.to_i

if selected_plan == 1
  puts "#{plans[selected_plan -1][:plan]}ですね、何人で行きますか？"
elsif selected_plan == 2
  puts "#{plans[selected_plan -1][:plan]}ですね、何人で行きますか？"
else selected_plan == 3
  puts "#{plans[selected_plan -1][:plan]}ですね、何人で行きますか？"
end

print "人数を入力 >"

number_of_people=gets.chomp.to_i

total_price = number_of_people * plans[selected_plan -1][:price]
discounted_total_price = number_of_people * plans[selected_plan -1][:price] * 0.9

if number_of_people >= 5
  puts "#{number_of_people}人以上なので10%割引となります"
  puts "合計料金：¥#{discounted_total_price.round.to_s.reverse.gsub( /(\d{3})(?=\d)/, '\1,').reverse}"
else
  puts "合計料金：¥#{total_price.to_s.reverse.gsub( /(\d{3})(?=\d)/, '\1,').reverse}"
end