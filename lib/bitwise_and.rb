def bitwise_and(a, b)
  # a & b
  as = a.to_s(2)
  bs = b.to_s(2)
  maxlength = [as.length, bs.length].max
  as = sprintf("%0#{maxlength}d", as)
  bs = sprintf("%0#{maxlength}d", bs)
  result = []
  as.chars.each_with_index do |ac, index|
    result << (ac == '1' && ac == bs[index] ? '1' : '0')
  end
  result.join.to_i(2)
end
