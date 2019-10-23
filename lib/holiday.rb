require 'pry'


def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |season, holiday_supplies_hash|
    if season == :summer
      holiday_supplies_hash.each do |holiday, supply|
        if holiday == :fourth_of_july
          return supply[1]
        end
      end
    end
  end
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, hash|
    if season == :winter
      hash.each do |holiday, items|
        if holiday == :christmas || :new_years
          items << supply
   end
  end
 end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash.each do |season, hash|
    if season == :spring
      hash.each do |holiday, items|
        if holiday == :memorial_day
          items << supply
    end
   end
  end
 end
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array

end


def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].map do |holiday, supplies|
    supplies.flatten
  end.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map{|w|
      w.capitalize}.join(" ")}: #{supplies.join(", ")}"

    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
  holidays.map do |holiday, supplies|
    holiday if supplies.include?("BBQ")

   end
 end.flatten.compact
end
