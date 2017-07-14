require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_array = []
  holiday_hash[:winter].each do |holiday, supply|
    supply.each do |item|
      holiday_array << item
  end
end
  holiday_array
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"

  holiday.each do |holiday, supplies|
    holiday_caps = holiday.to_s.split("_").each {|word| word.capitalize!}
    holiday_caps = holiday_caps.join(" ")
    supplies_output = supplies.join(", ")
    puts "  #{holiday_caps}: #{supplies_output}"
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_supplies.collect do |season, holiday|
  holiday.collect do |holiday, supplies|
    if supplies.include?("BBQ")
      new_array << holiday
    end
  end
end
new_array
end
