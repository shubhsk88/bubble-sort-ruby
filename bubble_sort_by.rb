def bubble_sort_by(arr)
  len = arr.length
  (0...len).each do |i|
    (i + 1...len).each do |j|
      next unless yield arr[i], arr[j]

      swap = arr[i]
      arr[i] = arr[j]
      arr[j] = swap
    end
  end
  arr
end

result = bubble_sort_by(%w[hi hello hey]) do |left, right|
  (left.length - right.length).positive?
end

p result
