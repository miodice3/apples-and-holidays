require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
   holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash.each do |season, season_hash|
      season_hash.each do |holiday, items|
      if season == :winter
        items << supply
         end
    end
  end
  holiday_hash
end

def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash.each do |season, season_hash|
    season_hash.each do |holiday, items|
    if holiday == :memorial_day
      items << supply
       end
  end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  #binding.pry
  holiday_hash[season][holiday_name]=supply_array
end

def all_winter_holiday_supplies(holiday_hash)
    holiday_hash.each do |season_symbol, holiday_hash_from_array|
      if season_symbol == :winter
        return holiday_hash_from_array.values.flatten(1)
      end
    end
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season_symbol, holiday_hash_from_array|
      puts "#{season_symbol.to_s.capitalize}:"
      holiday_hash_from_array.each do |holiday, items|
      holiday_to_str = holiday.to_s
      new_holiday_array = holiday_to_str.split("_")
      formatted_holiday = []
            new_holiday_array.each do |capitalize|
              formatted_holiday << capitalize.capitalize 
            end                           
                  return_items = ""
                  var = items.length-1
                  i = 0
                      while i < (items.length-1)
                      return_items << items[i]
                      return_items << ", "
                      i += 1
                      end
                  return_items << "#{items[var]}"
                  puts "  #{formatted_holiday.join(" ")}: #{return_items}"
         end
    end    
end

holiday_hash = {
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

def all_holidays_with_bbq(holiday_hash)
  return_array = []
  holiday_hash.each do |season_symbol, season_hash_from_array|
    season_hash_from_array.each do |holiday_hash_from_array, supply|
      
      cheese_types = ["BBQ"]
      if supply.find{|cheese|cheese_types.include?(cheese)} == "BBQ" 
        return_array << holiday_hash_from_array
                  end      
      end

    #return_array
    #binding.pry
  end
  return return_array
end




