class StringCalculator

  def self.add(numbers_str)
    return 0 if numbers_str.empty?
    
    # sum of number in string

    numbers = numbers_str.split(',').map(&:to_i) 
    numbers.delete_if {|x| x >= 1000 }

    #for checking neg (-) numbers

    if numbers_str.include?("-")
      num = numbers_str.split(',').map(&:to_i).select { |num| num < 0 }.join(", ")
      return "negative numbers not allowed #{num}"
    end
    
    #sum of number when \n also present

    numbers = numbers_str.gsub('\n', ",").split(',').map(&:to_i) if numbers_str.include?('\n') 

    # code for delimeter

    numbers = numbers_str.split("\;").map {|x| x[/\d+/]}.map(&:to_i) if numbers_str.start_with?("//") 
    numbers = numbers_str.split("*").map {|x| x[/\d+/]}.map(&:to_i) if numbers_str.include?('*')
    numbers = numbers_str.gsub(/[!@#%&*]/,',').split(",").map {|x| x[/\d+/]}.map(&:to_i) if numbers_str.include?('[*][%]')


    #for invalid string

    return "invalid" if numbers_str.split(',').include?('\n') 
    numbers.sum
  end
end
