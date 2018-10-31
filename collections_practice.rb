require "pry"

def begins_with_r(array)
  array_with_r = []
  
  array.collect do |element|
    if element.slice(0) == "r"
      array_with_r << element
    end 
  end 
  
  if array.size == array_with_r.size  
    true 
  else 
    false 
  end 
end 

def contain_a(array)
  array_with_a = []
  array.each do |element|
    if element.include?("a")
      array_with_a << element 
    end 
  end 
  return array_with_a
end 

def first_wa(array)
  array.find { |element| element.slice(0..1) == "wa" }
end 

def remove_non_strings(array)
  array.delete_if { |element| !(element.is_a? String) }
end 

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0 
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name 
        original_hash[:count] += 1 
      end 
    end 
  end.uniq
end 

def merge_data(keys, data)
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |first_name_hash|
        if first_name_hash[:first_name] == name
          first_name_hash.merge!(hash[name])
        end 
      end
    end 
  end
  keys
end 

def find_cool(array_of_hashes)
  array_of_hashes.delete_if {|hash| hash[:temperature] != "cool"}
end 

def organize_schools(something)
  new_hash = {}
  something.each do |array|
    location = array[1][:location]
    if new_hash.has_key?(location)
      new_hash[location] << array[0]
    elsif 
      new_hash[location] = [array[0]]
    end
  end
  new_hash
end 