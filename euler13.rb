def euler13
  File.open("euler13-num.txt") do |f|
  result = 0
  f.each_line do |line|
    result += line.to_i
    end
  result.to_s[0..9]
  end
end


  
