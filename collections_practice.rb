require "pry"
def begins_with_r(input)
  input.each do |el|
    if !el.start_with?("r")
      return false
    end
  end
    return true
end

def contain_a(words)
  my_words = []
  words.each do |word|
    if word.include? "a"
      my_words.push(word)
    end
  end
  return my_words
end

def first_wa(words)
  words.each do |word|
    if word.to_s.start_with?("wa")
      return word
    end
  end
end


def remove_non_strings(input)
  new_array = []
  input.delete_if do |el|
    if el.is_a?(String)
     new_array.push(el)
    end
  end
  return new_array
end

def count_elements(input)
  hash = Hash.new(0)
  input.collect { |element| hash[element] += 1 }
  hash.collect do |hash, number|
    hash[:count] = number
  end
  return hash.keys
end


def merge_data(keys, data)
  keys.each do |names|
    data.each do |hash|
      names.merge!(hash[names[:first_name]])
    end
  end
end

def find_cool(arr)
  arr.select { |entry| entry if entry.has_value?("cool")}
end

def organize_schools(schools)
  by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
   return by_location
end
