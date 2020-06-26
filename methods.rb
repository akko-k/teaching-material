def disp_plan(plans)
  plans.each.with_index(1) do|plan,i|
  puts "#{i}. #{plan[:destination]}(¥#{plan[:price].to_s(:delimited)})"
  end
end

def select_plan(plans)
  puts "旅行プランを選択してください"
  print "プランを選択 >"
  while true
    selected_number = gets.chomp.to_i
    break if(1..3).include?(selected_number)
    puts "不正な値です。1〜３の番号を入力して下さい"
  next
  end
  plans[selected_number -1]
end

def select_number_of_people(selected_plan)
  puts "#{selected_plan[:destination]}ですね、何人で行きますか？"
  print "人数を入力 >"
  while true 
    number_of_people=gets.chomp.to_i
    break if number_of_people >= 1
    puts "不正な値です。1以上を入力して下さい"
  next
  end
  number_of_people
end

def info_total_price(selected_plan, number_of_people)
  total_price = number_of_people * selected_plan[:price]
  discounted_total_price = (total_price * 0.9).round
  if number_of_people >= 5
   puts "5人以上なので10%割引となります"
   puts "合計料金：¥#{discounted_total_price.to_s(:delimited)}"
  else
  puts "合計料金：¥#{total_price.to_s(:delimited)}"
  end
end