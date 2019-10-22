require 'pry'
our_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}


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
  #binding.pry


  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)




  # return an array of all of the supplies that are used in the winter season
#binding.pry
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts season.to_s.capitalize + ":"
    holidays.each do |holiday, supplies|
      puts holiday.to_s.split("_")#capitalize + ":"

      binding.pry

    end
  end
end

all_supplies_in_holidays(our_hash)


  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.




def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
