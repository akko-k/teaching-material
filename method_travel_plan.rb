require "active_support/core_ext/numeric/conversions"

class Plan
  attr_accessor :destination, :price

  plan1 = Plan.new(destination:"沖縄旅行",price:10000)
  plan2 = Plan.new(destination:"北海道旅行",price:20000)
  plan3 = Plan.new(destination:"九州旅行",price:15000)

  plans = [plan1, plan2, plan3]

  puts "旅行プランを選択してください"

  def disp_plan(destination,price)
    plans.each.with_index(1) do|plan,i|
      puts "#{i}.#{plan.name} #{plan.destination}, #{plan.price}"
    end
  end

  disp_plan(destination,price)

  print "プランを選択 >"
  
  def judge_number_of_plan(selected_number)
    if selected_number < 1 ||  3 < selected_number
      return "不正な値です。1〜３の番号を入力して下さい"
    end
  end

  selected_number = gets.chomp.to_i
  selected_plan = plans[selected_number -1]
  puts "#{selected_plan.destination}ですね、何人で行きますか？"
  
  print "人数を入力 >"

  def judge_number_of_people(number_of_people)
    total_price = number_of_people * selected_plan[:price]
    discounted_total_price = (total_price * 0.9).round
    if number_of_people >= 5
      puts "5人以上なので10%割引となります"
      puts "合計料金：¥#{discounted_total_price.to_s(:delimited)}"
    elsif number_of_people >= 1
      puts "合計料金：¥#{total_price.to_s(:delimited)}"
    else
      puts "不正な値です。1以上を入力して下さい"
    end
  end

  number_of_people = gets.chomp.to_i
  
end


