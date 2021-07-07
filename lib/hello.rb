def hello_t(arr) 
  i = 0 
  
  if block_given?
    while i < arr.length 
      yield arr[i]   
      i = i + 1 
    end 
    arr
  else 
    puts "Hey! No block was given!"
  end 
end

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
