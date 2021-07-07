# your code goes here
# your code goes here
require 'pry'

def begins_with_r (array)
  output = true
  array.each do |foo|
    if foo[0] != "r"
      output = false
    end
  end
  output
end

def contain_a (array)
  output = []
  array.each do |foo|
    output << foo if foo.include?("a")
    end
  output
end

def first_wa (array)
  array.each do |foo|
    if foo.match(/wa/)
      return foo
    end
  end
end

def remove_non_strings (array)
  foo = []
  array.each do |contents|
    foo << contents if contents.instance_of?(String)
  end
  foo
end


def count_elements(array)
  array.each do |foo|
    foo[:count] = 0
    name = foo[:name]
    array.each do |hash|
      if hash[:name] == name
        foo[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  new_data = []
  keys.each do |name_data|
    name = name_data[:first_name]
    data.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        new_data << merged_person
      end
    end
  end
  new_data
end

def find_cool(array)
  foo = []
  array.each do |bar|
    foo << bar if bar[:temperature] == "cool"
  end
  foo
end

schoolsx = {"flatiron school bk"=>{:location=>"NYC"},
 "flatiron school"=>{:location=>"NYC"},
 "dev boot camp"=>{:location=>"SF"},
 "dev boot camp chicago"=>{:location=>"Chicago"},
 "general assembly"=>{:location=>"NYC"},
 "Hack Reactor"=>{:location=>"SF"}}

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school_name, school_location_hash|
    school_location = school_location_hash[:location]
    if organized_schools[school_location]
      organized_schools[school_location] << school_name
    else
      organized_schools[school_location] = []
      organized_schools[school_location] << school_name
    end
  end
  organized_schools
end
