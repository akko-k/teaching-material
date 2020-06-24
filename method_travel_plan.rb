require "active_support/core_ext/numeric/conversions"

def disp_plan(plans)
  plans.each.with_index(1) do|plan,i|
  puts "#{i}. #{plan[:destination]}(¥#{plan[:price].to_s(:delimited)})"
  end
end

plans = [
  { destination: "沖縄旅行", price: 10000 },
  { destination: "北海道旅行", price: 20000 },
  { destination: "九州旅行", price: 15000 },
]

disp_plan(plans)

print "プランを選択 >"

def select_plan(plans)
  selected_number = gets.chomp.to_i
  if selected_number < 1 ||  3 < selected_number
    return "不正な値です。1〜３の番号を入力して下さい"
  end
  return plans[selected_number -1]
end

selected_plan = select_plan(plans)

puts "#{selected_plan[:destination]}ですね、何人で行きますか？"
print "人数を入力 >"

def select_number_of_people(selected_plan)
  # コード
end

def info_total_price(selected_plan, number_of_people)
  # コード
end

number_of_people = select_number_of_people(selected_plan)
info_total_price(selected_plan, number_of_people)