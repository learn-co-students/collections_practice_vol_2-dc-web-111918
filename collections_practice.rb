require "pry"

def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.find_all {|word| word.include?("a")}
end

def first_wa(array)
  wa = []
  array.each do |word|
    if word.match(/wa/)
      wa << word
    end #if
  end #array each
  return wa.first
end

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String)}
end

def count_elements(array)
  array.each do |people|
    people[:count] = 0
    name = people[:name]
    array.each do |hash|
      if hash[:name] == name
        people[:count] += 1
      end #if
    end #hash array
  end #array people each
  return array.uniq
end

def merge_data(keys, data)
  merge = []
  keys.each do |person|
    name = person[:first_name]
    data.each do |stats|
      if stats[name]
        merger = stats[name]
        merger[:first_name] = name
        merge << merger
      end
    end
  end
  return merge
end

def find_cool(array)
  array.select do |word|
    word.has_value?("cool")
  end
end

def organize_schools(schools)
  ordered_schools = {}
  schools.each do |name, locations|
    places = locations[:location]
    if ordered_schools[places]
      ordered_schools[places] << name
    else
      ordered_schools[places] = []
      ordered_schools[places] << name
    end #if
  end #schools each
  return ordered_schools
end
